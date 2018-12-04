using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;
using System.Data;
using BLL_Special_Ticket.BD;
using DAL_Special_Ticket.BD;
using DAL_Special_Ticket.CAT_MANT;

namespace BLL_Special_Ticket.CAT_MANT
{
    class Cls_Eventos_BLL
    {

        public void Listar_Eventos(ref Cls_Eventos_DAL Obj_Eventos_DAL)
        {
            Cls_BD_BLL Obj_BD_BLL = new Cls_BD_BLL();
            Cls_BD_DAL Obj_BD_DAL = new Cls_BD_DAL();

            Obj_BD_DAL.sNomTabla = "Estados";
            Obj_BD_DAL.sSentencia = "SP_LISTAR_ESTADOS";

            Obj_BD_BLL.Exec_DataAdapter(ref Obj_BD_DAL);

            if (Obj_BD_DAL.sMsjError == string.Empty)
            {
                Obj_Estados_DAL.sMsj_Error = string.Empty;
                Obj_Estados_DAL.Ds = Obj_BD_DAL.DS;
            }
            else
            {
                Obj_Estados_DAL.sMsj_Error = Obj_BD_DAL.sMsjError;
                Obj_Estados_DAL.Ds = null;
            }
        }

        public void Filtrar_Eventos(ref Cls_Estados_DAL Obj_Estados_DAL, string sFiltro)
        {
            Cls_BD_BLL Obj_BD_BLL = new Cls_BD_BLL();
            Cls_BD_DAL Obj_BD_DAL = new Cls_BD_DAL();

            Obj_BD_DAL.sNomTabla = "Estados";
            Obj_BD_DAL.sSentencia = "SP_FILTRAR_ESTADOS";

            Obj_BD_BLL.Crear_DT_Parametros(ref Obj_BD_DAL);
            Obj_BD_DAL.Dt_Parametros.Rows.Add("@Descripcion", "4", sFiltro); // 4 es varchar

            Obj_BD_BLL.Exec_DataAdapter(ref Obj_BD_DAL);

            if (Obj_BD_DAL.sMsjError == string.Empty)
            {
                Obj_Estados_DAL.sMsj_Error = string.Empty;
                Obj_Estados_DAL.Ds = Obj_BD_DAL.DS;
            }
            else
            {
                Obj_Estados_DAL.sMsj_Error = Obj_BD_DAL.sMsjError;
                Obj_Estados_DAL.Ds = null;
            }
        }

        public void Insertar_Eventos(ref Cls_Estados_DAL Obj_Estados_DAL)
        {
            Cls_BD_BLL Obj_BD_BLL = new Cls_BD_BLL();
            Cls_BD_DAL Obj_BD_DAL = new Cls_BD_DAL();

            Obj_BD_DAL.sNomTabla = "";
            Obj_BD_DAL.sSentencia = "SP_INSERTAR_ESTADOS";

            Obj_BD_BLL.Crear_DT_Parametros(ref Obj_BD_DAL);
            Obj_BD_DAL.Dt_Parametros.Rows.Add("@IdEstado", "3", Obj_Estados_DAL.sIdEstado);
            Obj_BD_DAL.Dt_Parametros.Rows.Add("@Descripcion", "4", Obj_Estados_DAL.sDescripcion);


            Obj_BD_BLL.Exec_NonQuery(ref Obj_BD_DAL);

            if (Obj_BD_DAL.sMsjError == string.Empty)
            {


                Obj_Estados_DAL.sMsj_Error = string.Empty;
                Obj_Estados_DAL.bEstAX = true;
                Obj_Estados_DAL.sAX = "U";
            }
            else
            {


                Obj_Estados_DAL.sMsj_Error = Obj_BD_DAL.sMsjError;
                Obj_Estados_DAL.bEstAX = false;
                Obj_Estados_DAL.sAX = "I";
            }
        }

        public void Modificar_Eventos(ref Cls_Estados_DAL Obj_Estados_DAL)
        {

            Cls_BD_BLL Obj_BD_BLL = new Cls_BD_BLL();
            Cls_BD_DAL Obj_BD_DAL = new Cls_BD_DAL();

            Obj_BD_DAL.sNomTabla = "";
            Obj_BD_DAL.sSentencia = "SP_MODIFICAR_ESTADOS";

            Obj_BD_BLL.Crear_DT_Parametros(ref Obj_BD_DAL);
            Obj_BD_DAL.Dt_Parametros.Rows.Add("@IdEstado", "3", Obj_Estados_DAL.sIdEstado);
            Obj_BD_DAL.Dt_Parametros.Rows.Add("@Descripcion", "4", Obj_Estados_DAL.sDescripcion);


            Obj_BD_BLL.Exec_NonQuery(ref Obj_BD_DAL);

            if (Obj_BD_DAL.sMsjError == string.Empty)
            {


                Obj_Estados_DAL.sMsj_Error = string.Empty;
                Obj_Estados_DAL.bEstAX = true;
                Obj_Estados_DAL.sAX = "U";
            }
            else
            {


                Obj_Estados_DAL.sMsj_Error = Obj_BD_DAL.sMsjError;
                Obj_Estados_DAL.bEstAX = false;
                Obj_Estados_DAL.sAX = "U";
            }
        }

        public void Eliminar_Eventos(ref Cls_Estados_DAL Obj_Estados_DAL)
        {


            Cls_BD_BLL Obj_BD_BLL = new Cls_BD_BLL();
            Cls_BD_DAL Obj_BD_DAL = new Cls_BD_DAL();

            Obj_BD_DAL.sNomTabla = "";
            Obj_BD_DAL.sSentencia = "SP_ELIMINAR_ESTADOS";

            Obj_BD_BLL.Crear_DT_Parametros(ref Obj_BD_DAL);
            Obj_BD_DAL.Dt_Parametros.Rows.Add("@IdEstado", "3", Obj_Estados_DAL.sIdEstado);



            Obj_BD_BLL.Exec_NonQuery(ref Obj_BD_DAL);

            if (Obj_BD_DAL.sMsjError == string.Empty)
            {


                Obj_Estados_DAL.sMsj_Error = string.Empty;
                Obj_Estados_DAL.bEstAX = true;
                Obj_Estados_DAL.sAX = "D";
            }
            else
            {


                Obj_Estados_DAL.sMsj_Error = Obj_BD_DAL.sMsjError;
                Obj_Estados_DAL.bEstAX = false;
                Obj_Estados_DAL.sAX = "D";
            }
        }
    }
}
