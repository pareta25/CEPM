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
    
    public partial class ProjectTask
    {
        public int ProjectTaskId { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public int ProjectId { get; set; }
        public int TaskTime { get; set; }
        public System.DateTime AppliedDate { get; set; }
        public bool IsCompleted { get; set; }
        public bool IsStart { get; set; }
        public string ModifiedBy { get; set; }
        public System.DateTime ModifiedOn { get; set; }
        public string CreatedBy { get; set; }
        public System.DateTime CreatedOn { get; set; }
    
        public virtual Project Project { get; set; }
    }
}