using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

[Serializable]
[Table("role", Schema = "project")]
public class ERole
{
    private int id_user;
    private string rol_name;


    [Key]
    [Column("id_user")]  //-> column notations are for referencing the columns of the database table
    public int Id { get => id_user; set => id_user = value; }

    [Column("rol_name")]
    public string Rol_name { get => rol_name; set => rol_name = value; }

}