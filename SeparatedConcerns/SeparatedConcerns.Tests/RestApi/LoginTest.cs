using System;
using System.Collections.Generic;
using System.Linq; 
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Threading.Tasks;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Newtonsoft.Json;

namespace SeparatedConcerns.Tests
{
    [TestClass]
    public class LoginTest
    {
        const string ServiceUrl = "http://localhost:51636/api"; 

        [TestMethod]
        public async Task AttemptLogin()
        {
            var client = CreateHttpClient();

            string userName = "TestUser"; 
            string password = "TestPassword"; 

            // Request data 
            var content = new FormUrlEncodedContent(new Dictionary<string, string> { { "grant_type", "password" },
                { "username", userName },
                { "password", password },
                { "client_id", "IntegrationTest" }
            });

            var message = await client.PostAsync($"/User/Login", content);

            message.EnsureSuccessStatusCode();

            var data = message.Content.ReadAsStringAsync().Result;

            var user = JsonConvert.DeserializeObject<RestApi.ServiceModel.User>(data);

            Assert.IsTrue(user != null);
        }


        private HttpClient CreateHttpClient()
        {
            ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;

            var httpClient = new HttpClient
            {
                Timeout = TimeSpan.FromMinutes(5),
                BaseAddress = new Uri(ServiceUrl)
            };

            httpClient.DefaultRequestHeaders.Accept.Clear();
            httpClient.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

            return httpClient;
        }
    }
}
