﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;

public partial class GadgetitemsEntities : DbContext
{
    public GadgetitemsEntities()
        : base("name=GadgetitemsEntities")
    {
    }

    protected override void OnModelCreating(DbModelBuilder modelBuilder)
    {
        throw new UnintentionalCodeFirstException();
    }

    public DbSet<Tb_Category> Tb_Category { get; set; }
    public DbSet<Tb_login> Tb_login { get; set; }
    public DbSet<Tb_Product> Tb_Product { get; set; }
    public DbSet<Tb_Order> Tb_Order { get; set; }
    public DbSet<Tb_Register> Tb_Register { get; set; }
    public DbSet<Tb_Signin> Tb_Signin { get; set; }
    public DbSet<Tb_banners> Tb_banners { get; set; }
}
