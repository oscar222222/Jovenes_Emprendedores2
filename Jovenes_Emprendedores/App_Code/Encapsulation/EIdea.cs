using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;


/*Se han agrehado nuevas columnas a la tabla idea en la base de datos*/

[Serializable]
[Table("idea_user", Schema = "project")]
public class EIdea
{
    private int id_idea;
    private string registred_idea;
    private int id_user2;
    private string image_logo;
    private string elevator_P;
    private string file_idea;
    private DateTime date_idea;
    private string name_idea;
    private string type;

    private string name;
    private string apellido;
    private string email;


    [Key]
    [Column("id_idea")]  //-> column notations are for referencing the columns of the database table
    public int Id { get => id_idea; set => id_idea = value; }
    [Column("registred_id")]
    public string Registred_idea { get => registred_idea; set => registred_idea = value; }
    [Column("id_user2")]
    public int Id_user2 { get => id_user2; set => id_user2 = value; }
    [Column("image_logo")]
    public string Image_logo { get => image_logo; set => image_logo = value; }
    [Column("elevator_p")]
    public string Elevator_P { get => elevator_P; set => elevator_P = value; }
    [Column("file_idea")]
    public string File_idea { get => file_idea; set => file_idea = value; }
    [Column("date_idea")]
    public DateTime Date_idea { get => date_idea; set => date_idea = value; }
    [Column("name_idea")]
    public string Name_idea { get => name_idea; set => name_idea = value; }
    [Column("type_idea")]
    public string Type { get => type; set => type = value; }
    [NotMapped]
    public string Name { get => name; set => name = value; }
    [NotMapped]
    public string Email { get => email; set => email = value; }
    [NotMapped]
    public string Apellido { get => apellido; set => apellido = value; }
}