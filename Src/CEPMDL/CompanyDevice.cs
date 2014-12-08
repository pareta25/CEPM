//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CEPMDL
{
    using System;
    using System.Collections.Generic;
    
    public partial class CompanyDevice
    {
        public CompanyDevice()
        {
            this.EmployeeDevices = new HashSet<EmployeeDevice>();
        }
    
        public int CompanyId { get; set; }
        public int DeviceId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public string Code { get; set; }
        public string ModelNumber { get; set; }
        public System.DateTime PurchaseDate { get; set; }
        public Nullable<System.DateTime> TerminationDate { get; set; }
        public bool IsActive { get; set; }
        public string Status { get; set; }
        public string ModifiedBy { get; set; }
        public System.DateTime ModifiedOn { get; set; }
        public string CreatedBy { get; set; }
        public System.DateTime CreatedOn { get; set; }
    
        public virtual CompanyContact CompanyContact { get; set; }
        public virtual ICollection<EmployeeDevice> EmployeeDevices { get; set; }
    }
}