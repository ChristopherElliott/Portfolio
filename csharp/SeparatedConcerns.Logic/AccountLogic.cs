using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SeparatedConcerns.Logic.Security;
using SeparatedConcerns.Repository;
using SeparatedConcerns.Shared;
using SeparatedConcerns.Shared.Exceptions;
using SeparatedConcerns.Shared.Model;

namespace SeparatedConcerns.Logic
{
    public class AccountLogic : Shared.Interfaces.IAccountLogic
    {
        private UserRepository _userRepository; 
        private PasswordHash _hashUtility; 

        public AccountLogic()
        {
            _userRepository = new UserRepository(); 
        }

        public User Login(string username, string clearText)
        {
            var user = _userRepository.GetUserForLogin(username); 
            var hashUtility = new PasswordHash(user.HashedPassword); 

            if (!hashUtility.Verify(clearText))
                throw new UserMistakeException(Constants.UserLoginFailed); 

            return user; 
        }
    }
}
