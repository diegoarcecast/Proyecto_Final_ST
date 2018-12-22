using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BLL_Special_Ticket.BD;
using DAL_Special_Ticket.BD;
using DAL_Special_Ticket.CAT_MANT;

namespace BLL_Special_Ticket.CAT_MANT
{
   public class Cls_Usuario_BLL //Hecho Por Juan Diego
    {
        public void Insertar_Usuarios(ref Cls_Usuario_DAL Obj_Usuario_DAL)
        {
            Cls_BD_BLL Obj_BD_BLL = new Cls_BD_BLL();
            Cls_BD_DAL Obj_BD_DAL = new Cls_BD_DAL();

            Obj_BD_DAL.SNomTabla = "";
            Obj_BD_DAL.SSentencia = "SP_INSERTAR_USUARIO1";

            Obj_BD_BLL.Crear_DT_Parametros(ref Obj_BD_DAL);
            Obj_BD_DAL.Dt_Parametros.Rows.Add("@Nombre", "4", Obj_Usuario_DAL.SNombre);
            Obj_BD_DAL.Dt_Parametros.Rows.Add("@Notas", "4", Obj_Usuario_DAL.SNotas);
            Obj_BD_DAL.Dt_Parametros.Rows.Add("@Telefono", "4", Obj_Usuario_DAL.STelefono);
            Obj_BD_DAL.Dt_Parametros.Rows.Add("@Correo", "4",Obj_Usuario_DAL.SCorreo);
            Obj_BD_DAL.Dt_Parametros.Rows.Add("@Clave", "4", Obj_Usuario_DAL.SClave);         
            Obj_BD_DAL.Dt_Parametros.Rows.Add("@Notificaciones", "3", Obj_Usuario_DAL.BNotificaciones);
            


            Obj_BD_BLL.Exec_NonQuery(ref Obj_BD_DAL);

            if (Obj_BD_DAL.SMsjError == string.Empty)
            {


                Obj_Usuario_DAL.SMsj_Error = string.Empty;
                Obj_Usuario_DAL.BEstAX = true;
                Obj_Usuario_DAL.SAX = "U";
            }
            else
            {


                Obj_Usuario_DAL.SMsj_Error = Obj_BD_DAL.SMsjError;
                Obj_Usuario_DAL.BEstAX = false;
                Obj_Usuario_DAL.SAX = "I";
            }
        }

        public bool Autenticar_Usuario(ref Cls_Usuario_DAL Obj_Usuario_DAL, string Correo,string clave)
        {
            Cls_BD_BLL Obj_BD_BLL = new Cls_BD_BLL();
            Cls_BD_DAL Obj_BD_DAL = new Cls_BD_DAL();

            Obj_BD_DAL.SNomTabla = "Usuarios";
            Obj_BD_DAL.SSentencia = "SP_CONSULTAR_USUARIOS";//  Necesito que devuelva 

            Obj_BD_BLL.Crear_DT_Parametros(ref Obj_BD_DAL);
            Obj_BD_DAL.Dt_Parametros.Rows.Add("@Correo", "4", Correo); // 4 es varchar
            Obj_BD_DAL.Dt_Parametros.Rows.Add("@Clave", "4", clave); // 4 es varchar

            Obj_BD_BLL.Exec_DataAdapter(ref Obj_BD_DAL);

            if (Obj_BD_DAL.SMsjError == string.Empty)
            {
                Obj_Usuario_DAL.SMsj_Error = string.Empty;
                Obj_Usuario_DAL.Ds = Obj_BD_DAL.DS;
                if (Obj_Usuario_DAL.Ds.Tables.Contains(Correo)&&Obj_Usuario_DAL.Ds.Tables.Contains(clave))
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            else
            {
                Obj_Usuario_DAL.SMsj_Error = Obj_BD_DAL.SMsjError;
                Obj_Usuario_DAL.Ds = null;
                return false;
            }
        }
        public bool Autenticar_Usuario2(string Correo, string clave) { 
        string sqlstring;
        sqlstring = "Select user_name, password from [user_table] where user_name='" + Correo + "' and password ='" + clave + "'";
                 
                 // crear la conexion con la bd
        System.Data.SqlClient.SqlConnection conex = new System.Data.SqlClient.SqlConnection(
                              " Data Source=datebaseservername;Initial Catalog=datebasename;UserID=databaseusername;Password=databasepassword;Connect Timeout=10;TrustServerCertificate=True ");

        // crear comando sql
        System.Data.SqlClient.SqlCommand comm = new System.Data.SqlClient.SqlCommand(sqlstring, conex);

        // crear el sqlreader para ejecutar el comando de arriba
        System.Data.SqlClient.SqlDataReader reader;

        // abrir la conexion
        conex.Open();

                // ejecuta el comando en sql y guarda los valores en reader
                reader = comm.ExecuteReader();

            // revisa si el valor que devuelve viene vacio, y si es asi, devuelve falso
            if (reader.Read())
            {
                conex.Close();
                return true;
            }
            else
            {
                conex.Close();
                return false;
            }

            }


        public void Modificar_Usuarios(ref Cls_Usuario_DAL Obj_Usuario_DAL,String Correo)
        {

            Cls_BD_BLL Obj_BD_BLL = new Cls_BD_BLL();
            Cls_BD_DAL Obj_BD_DAL = new Cls_BD_DAL();

            Obj_BD_DAL.SNomTabla = "";
            Obj_BD_DAL.SSentencia = "SP_ACTUALIZAR_Usr_Usuario";

            Obj_BD_BLL.Crear_DT_Parametros(ref Obj_BD_DAL);
            
            Obj_BD_DAL.Dt_Parametros.Rows.Add("@vc_nombreUsuario", "4", Obj_Usuario_DAL.SNombre);
            Obj_BD_DAL.Dt_Parametros.Rows.Add("@vc_cedulaUsuario", "4", Obj_Usuario_DAL.SNotas);
            Obj_BD_DAL.Dt_Parametros.Rows.Add("@vc_telefonoUsuario", "4", Obj_Usuario_DAL.STelefono);
            Obj_BD_DAL.Dt_Parametros.Rows.Add("@vc_correoUsuario", "4", Correo);
            Obj_BD_DAL.Dt_Parametros.Rows.Add("@vc_claveUsuario", "4", Obj_Usuario_DAL.SClave);
            Obj_BD_DAL.Dt_Parametros.Rows.Add("@b_activoUsuario", "3", Obj_Usuario_DAL.BNotificaciones);


            Obj_BD_BLL.Exec_NonQuery(ref Obj_BD_DAL);

            if (Obj_BD_DAL.SMsjError == string.Empty)
            {


                Obj_Usuario_DAL.SMsj_Error = string.Empty;
                Obj_Usuario_DAL.BEstAX = true;
                Obj_Usuario_DAL.SAX = "U";
            }
            else
            {


                Obj_Usuario_DAL.SMsj_Error = Obj_BD_DAL.SMsjError;
                Obj_Usuario_DAL.BEstAX = false;
                Obj_Usuario_DAL.SAX = "U";
            }
        }

        public bool Recuperar_Clave_Usuarios(ref Cls_Usuario_DAL Obj_Usuario_DAL)             
        {
            Cls_BD_BLL Obj_BD_BLL = new Cls_BD_BLL();
            Cls_BD_DAL Obj_BD_DAL = new Cls_BD_DAL();

            Obj_BD_DAL.SNomTabla = "Usuarios";
            Obj_BD_DAL.SSentencia = "SP_LISTAR_CORREOS";

            Obj_BD_BLL.Exec_DataAdapter(ref Obj_BD_DAL);

            if (Obj_BD_DAL.SMsjError == string.Empty)
            {
                Obj_Usuario_DAL.SMsj_Error = string.Empty;
                Obj_Usuario_DAL.Ds = Obj_BD_DAL.DS;
                return true;
            }
            else
            {
                Obj_Usuario_DAL.SMsj_Error = Obj_BD_DAL.SMsjError;
                Obj_Usuario_DAL.Ds = null;
                return false;
            }
        }
    }
}
