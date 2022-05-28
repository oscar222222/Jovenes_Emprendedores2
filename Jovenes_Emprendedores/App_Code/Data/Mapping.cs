using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

/// <summary>
/// This class handles communication with the database.
/// </summary>
public class Mapping : DbContext
{

    private string schema;

    public Mapping() // the constructor takes care of calling the connection string

        : base("name=Jovenes") // the name of the connection string is placed
    {

    }
    protected override void OnModelCreating(DbModelBuilder builder)
    {
        builder.HasDefaultSchema(this.schema);

        base.OnModelCreating(builder);
    }


    public virtual DbSet<EIdea> Idea { get; set; }
    public virtual DbSet<ERole> Role { get; set; }
    public virtual DbSet<EUserInformation> Information { get; set; }


}