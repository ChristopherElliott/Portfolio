using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SeparatedConcerns.Shared.Exceptions
{
    [Serializable]
    public class UserMistakeException : Exception
    {
        public UserMistakeException(string message) : base(message)
        {

        }
    }
}
