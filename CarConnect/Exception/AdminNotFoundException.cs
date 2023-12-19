using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CarConnect.Exception
{
    internal class AdminNotFoundException : ApplicationException
    {
        public AdminNotFoundException()
        {

        }
        public AdminNotFoundException(string message) : base(message)
        {

        }
    }
}
