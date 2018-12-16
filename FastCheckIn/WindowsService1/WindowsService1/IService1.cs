using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace WindowsService1
{
    [ServiceContract]
    public interface IService1
    {
        [OperationContract]
        bool InsertGuest(GuestData GuestInsert);

        [OperationContract]
        List<GuestData> GetGuest();
    }

    [DataContract]
    public class GuestData
    {
        private string _Guest_ID;
        private string _Name;
        private string _FirstName;
        private DateTime _DateofBirth;
        private string _Phone;
        private string _Street;
        private string _Zip;
        private string _City;
        private string _State;
        private string _Country;
        private string _User;
        private DateTime _Timestamp;
        
        [DataMember]
        public string Guest_ID
        {
            get { return _Guest_ID; }
            set { _Guest_ID = value; }
        }

        [DataMember]
        public string Name
        {
            get { return _Name; }
            set { _Name = value; }
        }

        [DataMember]
        public string FirstName
        {
            get { return _FirstName; }
            set { _FirstName = value; }
        }

        [DataMember]
        public DateTime DateofBirth
        {
            get { return _DateofBirth; }
            set { _DateofBirth = value; }
        }
        
        [DataMember]
        public string Phone
        {
            get { return _Phone; }
            set { _Phone = value; }
        }

        [DataMember]
        public string Street
        {
            get { return _Street; }
            set { _Street = value; }
        }

        [DataMember]
        public string Zip
        {
            get { return _Zip; }
            set { _Zip = value; }
        }
        
        [DataMember]
        public string City
        {
            get { return _City; }
            set { _City = value; }
        }

        [DataMember]
        public string State
        {
            get { return _State; }
            set { _State = value; }
        }

        [DataMember]
        public string Country
        {
            get { return _Country; }
            set { _Country = value; }
        }

        [DataMember]
        public string User
        {
            get { return _User; }
            set { _User = value; }
        }

        [DataMember]
        public DateTime Timestamp
        {
            get { return _Timestamp; }
            set { _Timestamp = value; }
        }
    }
}
