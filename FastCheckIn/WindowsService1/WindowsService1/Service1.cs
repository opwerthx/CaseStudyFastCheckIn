using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace WindowsService1
{
    public class Service1 : IService1
    {

        public bool InsertGuest(GuestData GuestInsert)
        {
            CheckInFastEntities GuestData = new CheckInFastEntities();
            Guest NewGuest = new Guest();

            NewGuest.Guest_ID = Convert.ToInt32(GuestInsert.Guest_ID);
            NewGuest.Name = GuestInsert.Name;
            NewGuest.FirstName = GuestInsert.FirstName;
            NewGuest.DateofBirth = GuestInsert.DateofBirth;
            NewGuest.Phone = GuestInsert.Phone;
            NewGuest.Street = GuestInsert.Street;
            NewGuest.Zip = GuestInsert.Zip;
            NewGuest.City = GuestInsert.City;
            NewGuest.State = GuestInsert.State;
            NewGuest.Country = GuestInsert.Country;
            NewGuest.User = GuestInsert.User;
            NewGuest.Timestamp = GuestInsert.Timestamp;

            GuestData.Guests.Add(NewGuest);
            GuestData.SaveChanges();
            return true;
        }

        public List<GuestData> GetGuest()
        {
            var GuestList = new List<GuestData>();
            CheckInFastEntities GuestData = new CheckInFastEntities();
            foreach (var Guest in GuestData.Guests.ToList())
            {
                GuestData GetGuest = new GuestData();
                GetGuest.Guest_ID = Convert.ToString(Guest.Guest_ID);
                GetGuest.Name = Guest.Name;
                GetGuest.FirstName = Guest.FirstName;
                GetGuest.DateofBirth = Guest.DateofBirth ?? DateTime.MinValue; ;
                GetGuest.Phone = Guest.Phone;
                GetGuest.Street = Guest.Street;
                GetGuest.Zip = Guest.Zip;
                GetGuest.City = Guest.City;
                GetGuest.State = Guest.State;
                GetGuest.Country = Guest.Country;
                GetGuest.User = Guest.User;
                GetGuest.Timestamp = Guest.Timestamp ?? DateTime.MinValue; ;

                GuestList.Add(GetGuest);
            }
            return GuestList;
        }
    }
}

