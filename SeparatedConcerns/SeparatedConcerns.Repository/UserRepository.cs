using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SeparatedConcerns.Shared.Model;
using AutoMapper.QueryableExtensions; 
using SeparatedConcerns.Shared.Exceptions;
using SeparatedConcerns.Shared;

namespace SeparatedConcerns.Repository
{
    public class UserRepository
    {
        public User GetUserForLogin(string username)
        {
            using (var context = new DataAccess.ClientAccountsEntities())
            {
                var query = from u in context.Users
                            where u.Name == username
                            select u; 
                            
                var user = query.ProjectTo<User>().FirstOrDefault(); 

                if (user == null)
                    throw new UserMistakeException(Constants.UserLoginFailed); 

                return user; 
            }
        }
    }
}
