using CarConnect.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CarConnect.Interfaces
{
    internal interface IReservationRepository
    {
        List<Reservation> GetAllReservations();
        Reservation GetReservationById(int id);
        Reservation GetReservationsByCustomerId(int customerId);
        void CreateReservation(Reservation reservation);
        void CancelReservation(int id);
        void UpdateReservation(int r_id, string status);
        public double? CalculateTotalCost(int vehicleId, int reservationid);
    }
}