using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using DAL_Special_Ticket.BD;
using System.Configuration;

namespace BLL_Special_Ticket.BD
{
    public class Cls_BD_BLL
    {

        public string Conectar_BD()
        {
            try
            {
                Cls_BD_DAL Obj_BD_DAL = new Cls_BD_DAL();

                //por indice o por nombre
                Obj_BD_DAL.SCadenaConec = ConfigurationManager.ConnectionStrings[0].ToString();
                //creo obj conexion
                Obj_BD_DAL.Obj_SQL_CNX = new SqlConnection(Obj_BD_DAL.SCadenaConec);
                //abrir conex 
                // prubas
                // hola
                //hola soy ana
                if (Obj_BD_DAL.Obj_SQL_CNX.State == ConnectionState.Closed)
                {
                    Obj_BD_DAL.Obj_SQL_CNX.Open();
                }

                return string.Empty;
            }
            catch (Exception e)
            {
                return e.Message.ToString();

            }
        }
    }
}
