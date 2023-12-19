using CarConnect.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CarConnect.Interfaces
{
    internal interface ICustomerRepository
    {
        List<Customer> GetAllCustomers();
        void RegisterCustomer(Customer customer);
        Customer GetCustomerById(int id);
        Customer GetCustomerByUserName(string user);
        int DeleteCustomer(int id);
        int customerAuthenticate(string user, string pass);
        void UpdateCustomer(int id, string mail);
    }
}

