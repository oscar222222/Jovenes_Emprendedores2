using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de DAORegis
/// </summary>
public class DAORegis
{


    /*_________________________________________________________USER METHOD_________________*/

    public void InsertInfo(EUserInformation info)
    {
        using (var db = new Mapping())
        {
            db.Information.Add(info);
            db.SaveChanges();  //-> confirm the save in the table
        }
    }


    public List<EUserInformation> GetnewEreslt()
    {
        using (var db = new Mapping())
        {
            return db.Information.OrderBy(x => x.Name).ToList();
        }
    }
    public List<EUserInformation> get_information(int user)
    {
        using (var db = new Mapping())
        {
            return (List<EUserInformation>)db.Information.Where(x => x.Id == user).OrderBy(x => x.Name).ToList();
        }
    }




    public void update_data(EUserInformation data)
    {
        using (var db = new Mapping())
        {
            db.Information.Attach(data);
            var entry = db.Entry(data);
            entry.State = EntityState.Modified;
            db.SaveChanges();  //-> confirm the save in the table
        }

    }

    /*_________________________________________________________IDEA METHOD_________________*/

    public List<EIdea> GetIdea()
    {
        using (var db = new Mapping())
        {
            return db.Idea.OrderBy(x => x.Id).ToList();
        }
    }

    public void InsertIdea(EIdea idea)// 
    {
        using (var db = new Mapping())
        {
            db.Idea.Add(idea);
            db.SaveChanges();  //-> confirm the save in the table
        }

    }
    public List<EIdea> get_Idea(int user)
    {
        using (var db = new Mapping())
        {
            return (List<EIdea>)db.Idea.Where(x => x.Id_user2 == user).ToList();
        }
    }


    public List<EIdea> GSaerch(string name)
    {
        using (var db = new Mapping())
        {
            return db.Idea.Where(x => x.Registred_idea.Contains(name)).ToList();// search

        }
    }


    public List<EIdea> GSaerchFIL(string name)
    {
        using (var db = new Mapping())
        {
            return db.Idea.Where(x1 => x1.Type.Contains(name)).ToList();

        }
    }

    public void update_dataIDea(EIdea data)
    {
        using (var db = new Mapping())
        {
            db.Idea.Attach(data);
            var entry = db.Entry(data);
            entry.State = EntityState.Modified;
            db.SaveChanges();  //-> confirm the save in the table
        }

    }

    public void delete_dataIDea(EIdea data)
    {
        using (var db = new Mapping())
        {
            db.Idea.Attach(data);
            var entry = db.Entry(data);
            entry.State = EntityState.Deleted;
            db.SaveChanges();  //-> confirm the save in the table
        }

    }

    public List<EUserInformation> GetUser1()
    {
        using (var db = new Mapping())
        {
            return db.Information.Where(x => x.Id_role1 == 1).ToList();
        }
    }

    public List<EUserInformation> GetUser2()
    {
        using (var db = new Mapping())
        {
            return db.Information.Where(x => x.Id_role1 == 2).ToList();
        }
    }

    public List<EUserInformation> GetUser3()
    {
        using (var db = new Mapping())
        {
            return db.Information.Where(x => x.Id_role1 == 3).ToList();
        }
    }

}