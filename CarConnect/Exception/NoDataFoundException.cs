using CarConnect.Exception;
using System;

/// <summary>
/// Summary description for Class1
/// </summary>

namespace CarConnect.Exception
{
    internal class NoDataFoundException : ApplicationException
    {
        public NoDataFoundException() { }
        public NoDataFoundException(string message) : base(message)
        {
        }
    }
}

