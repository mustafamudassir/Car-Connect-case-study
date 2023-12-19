using CarConnect.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CarConnect.Interfaces
{
    internal interface IVehicleRepository
    {
        List<Vehicle> GetAllVehicles();
        Vehicle GetVehicleById(int id);
        List<Vehicle> GetAvailableVehicles();
        void AddVehicle(Vehicle vehicle);
        void RemoveVehicle(int v_id);
        void UpdateVehicle(int vehi_id, string color);
        double? GetDailyRateByVehicleId(int vehicleId);


    }
}
