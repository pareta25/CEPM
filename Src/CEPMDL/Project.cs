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
    
    public partial class Project
    {
        public Project()
        {
            this.PrjectWikis = new HashSet<PrjectWiki>();
            this.ProjectBugs = new HashSet<ProjectBug>();
            this.ProjectMembers = new HashSet<ProjectMember>();
            this.ProjectTasks = new HashSet<ProjectTask>();
        }
    
        public int CompanyId { get; set; }
        public int ProjectId { get; set; }
        public string ProjectName { get; set; }
        public string Description { get; set; }
        public string Email { get; set; }
        public string Website { get; set; }
        public System.DateTime StartDate { get; set; }
        public Nullable<System.DateTime> EndDate { get; set; }
        public bool IsComplete { get; set; }
        public Nullable<decimal> ProjectCost { get; set; }
        public Nullable<int> EstimationDays { get; set; }
        public Nullable<decimal> EstimateCost { get; set; }
        public Nullable<int> budgetHours { get; set; }
        public string ModifiedBy { get; set; }
        public System.DateTime ModifiedOn { get; set; }
        public string CreatedBy { get; set; }
        public System.DateTime CreatedOn { get; set; }
    
        public virtual ICollection<PrjectWiki> PrjectWikis { get; set; }
        public virtual ICollection<ProjectBug> ProjectBugs { get; set; }
        public virtual ICollection<ProjectMember> ProjectMembers { get; set; }
        public virtual ICollection<ProjectTask> ProjectTasks { get; set; }
    }
}