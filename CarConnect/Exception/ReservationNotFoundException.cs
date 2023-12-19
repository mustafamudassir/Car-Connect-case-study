using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CarConnect.Exception
{
    internal class ReservationNotFoundException : ApplicationException
    {
        public ReservationNotFoundException()
        {

        }
        public ReservationNotFoundException(string message) : base(message)
        {

        }
    }
}
