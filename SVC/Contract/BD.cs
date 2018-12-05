using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.Data;

using BLL_Special_Ticket.BD;
using DAL_Special_Ticket.BD;

namespace SVC.Contract
{
    public class BD : Interface.IBD
    {

        public DataTable ListarDatos(string sNombreSP)
        {
            Cls_BD_BLL obj_BD_BLL = new Cls_BD_BLL();
            Cls_BD_DAL obj_BD_DAL = new Cls_BD_DAL();
            return obj_BD_BLL.ExecuteDataAdapter( sNombreSP, "", SqlDbType.VarChar,  "");
        }

        public DataTable FILTRARDatos(string sNombreSP, string sNombreParametro, SqlDbType DBType, string svalorparametro)
        {
            Cls_BD_BLL obj_BD_BLL = new Cls_BD_BLL();
            Cls_BD_DAL obj_BD_DAL = new Cls_BD_DAL();
            return obj_BD_BLL.ExecuteDataAdapter(sNombreSP, sNombreParametro, DBType, svalorparametro);
        }


        public int SUMAR(int Valor_1, int Valor_2)
        {
            return Valor_1 + Valor_2;
        }

        public bool ConectarBD()
        {
            Cls_BD_BLL obj_BD_BLL = new Cls_BD_BLL();
            Cls_BD_DAL obj_BD_DAL = new Cls_BD_DAL();

            if (obj_BD_BLL.Conectar_BD() == string.Empty)
            {
                return true;
            }
            else
            {
                return false;

            }
        }

        
    }
}
