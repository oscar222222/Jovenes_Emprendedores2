using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de DAOProyectos
/// </summary>
public class DAOProyectos
{

    public List<EIdea> obtenerIdeas(int idUser)
    {
        using (var db = new Mapping())
        {
            return (List<EIdea>)db.Idea.Where(x => x.Id_user2 == idUser).OrderBy(x => x.Id).ToList();

        }


    }



    public void insertarIdea(EIdea idea)
    {
        using (var db = new Mapping())
        {
            db.Idea.Add(idea);
            db.SaveChanges();
        }
    }

    public List<EIdea> ObtenerIdeasCompleta()
    {
        using (var db = new Mapping())
        {
            return db.Idea.OrderBy(x => x.Id).ToList();

        }


    }

    public List<EIdea> obtenerVerMas(string N_Idea)
    {
        using (var db = new Mapping())
        {
            return (List<EIdea>)db.Idea.Where(x => x.Name_idea.Equals(N_Idea)).ToList();

        }
    }

    public List<EUserInformation> obtener_VerPerfil(int id_user)
    {
        using (var db = new Mapping())
        {
            return (List<EUserInformation>)db.Information.Where(x => x.Id == id_user).ToList();

        }
    }




    public List<EIdea> obtenerVerMas2(int N_Emp, string N_Idea)
    {
        using (var db = new Mapping())
        {
            return (from idea in db.Idea
                    join usuario in db.Information on idea.Id_user2 equals usuario.Id

                    select new
                    {
                        idea,
                        usuario

                    }).ToList().Where(x => x.idea.Id_user2 == N_Emp && x.idea.Name_idea == N_Idea).Select(m => new EIdea
                    {
                        Id = m.idea.Id,
                        Registred_idea = m.idea.Registred_idea,
                        Id_user2 = m.idea.Id_user2,
                        Image_logo = m.idea.Image_logo,
                        Elevator_P = m.idea.Elevator_P,
                        File_idea = m.idea.File_idea,
                        Date_idea = m.idea.Date_idea,
                        Name_idea = m.idea.Name_idea,
                        Type = m.idea.Type,
                        Name = m.usuario.Name,
                        Apellido = m.usuario.Surname,
                        Email = m.usuario.Email


                    }).ToList();
        }



    }


    public void Actilizar_Datos(EUserInformation datos)
    {
        using (var db = new Mapping())
        {
            db.Information.Attach(datos);
            var entry = db.Entry(datos);
            entry.State = EntityState.Modified;
            db.SaveChanges();
        }

    }





}


