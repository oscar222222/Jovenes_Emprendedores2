using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

[Serializable]
[Table("user_information", Schema = "project")]
public class EUserInformation
{
    private int id_info_user;
    private string name;
    private string surname;
    private string username;
    private string email;
    private string password;
    private DateTime date_of_birth;
    private int id_role1;
    private string condition;


    [Key]
    [Column("id_info_user")]  //-> column notations are for referencing the columns of the database table
    public int Id { get => id_info_user; set => id_info_user = value; }
    [Column("name")]
    public string Name { get => name; set => name = value; }

    [Column("surname")]
    public string Surname { get => surname; set => surname = value; }

    [Column("username")]
    public string Username { get => username; set => username = value; }


    [Column("email")]
    public string Email { get => email; set => email = value; }


    [Column("password")]
    public string Password { get => password; set => password = value; }

    [Column("date_of_birth")]
    public DateTime Date_of_birth { get => date_of_birth; set => date_of_birth = value; }


    [Column("id_role1")]
    public int Id_role1 { get => id_role1; set => id_role1 = value; }

    [Column("condition")]
    public string Condition { get => condition; set => condition = value; }


}