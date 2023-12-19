using CarConnect.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CarConnect.Interfaces
{
    internal interface IAdminRepository
    {
        int Authenticate(string username, string password);
        List<Admin> GetAllAdmin();
        Admin GetAdminById(int id);
        Admin GetAdminByUserName(string u_name);
        void RegisterAdmin(Admin admin);
        void UpdateAdmin(int a_id, string firstname);

        void DeleteAdmin(int id);


    }
}
