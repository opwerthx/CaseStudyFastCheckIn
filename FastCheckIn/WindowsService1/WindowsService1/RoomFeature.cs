//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WindowsService1
{
    using System;
    using System.Collections.Generic;
    
    public partial class RoomFeature
    {
        public RoomFeature()
        {
            this.Rooms = new HashSet<Room>();
        }
    
        public int RoomFeature_ID { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
    
        public virtual ICollection<Room> Rooms { get; set; }
    }
}