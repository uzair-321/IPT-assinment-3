﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Pharmscy_Management.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class pharmacyEntities1 : DbContext
    {
        public pharmacyEntities1()
            : base("name=pharmacyEntities1")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Admin> Admins { get; set; }
        public virtual DbSet<Qoute_Us> Qoute_Us { get; set; }
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }
        public virtual DbSet<contact> contacts { get; set; }
        public virtual DbSet<career> careers { get; set; }
        public virtual DbSet<Candidate> Candidates { get; set; }
        public virtual DbSet<capsule> capsules { get; set; }
        public virtual DbSet<Tablet> Tablets { get; set; }
        public virtual DbSet<Liquid_filling> Liquid_fillings { get; set; }
    }
}
