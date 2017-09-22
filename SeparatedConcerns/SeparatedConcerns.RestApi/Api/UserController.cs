using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using AutoMapper;
using SeparatedConcerns.Logic;
using SeparatedConcerns.RestApi.ServiceModel;

namespace SeparatedConcerns.RestApi.Api
{
    public class UserController : ApiController
    {
        AccountLogic _accounts; 

        public UserController()
        {
            // TODO: Select DI framework and inject this
            _accounts = new AccountLogic(); 
        }

        // GET api/<controller>/5
        public User Login(string username, string password)
        {
            var user = Mapper.Map<User>(_accounts.Login(username, password)); 

            //TODO: Store login information as an encrypted token and return to user. 

            return user; 
        }
    }
}