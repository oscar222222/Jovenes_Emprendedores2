using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Daologin
/// </summary>
public class Daologin
{
    public EUserInformation login(EUserInformation user)
    {
        using (var db = new Mapping())
        {
            return db.Information.Where(x => x.Username.Equals(user.Username) && x.Password.Equals(user.Password) && x.Condition.Equals("ACTIVADO")).FirstOrDefault();
        }

    }

}



