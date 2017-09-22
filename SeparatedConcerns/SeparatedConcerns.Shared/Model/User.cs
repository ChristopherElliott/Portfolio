using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SeparatedConcerns.Shared.Model
{
    public class User
    {
        public string Name { get; set; }
        public byte[] HashedPassword { get; set; }
    }
}
