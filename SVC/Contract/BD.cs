using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.Data;
using BLL_Special_Ticket.CAT_MANT;
using DAL_Special_Ticket.CAT_MANT;
using BLL_Special_Ticket.BD;
using DAL_Special_Ticket.BD;

namespace SVC.Contract
{
    public class BD : Interface.IBD
    {
        public DataTable ListarDatosZona(string sNombreSP )
        {
            Cls_Zona_BLL obj_Zona_BLL = new Cls_Zona_BLL();
            Cls_BD_DAL obj_BD_DAL = new Cls_BD_DAL();

            return obj_Zona_BLL.ListarDatosZona(sNombreSP, SqlDbType.VarChar);
        }

        public string Insertar_Usuarios(string Correo, string Clave, string Nombre, string Notas, string Telefono, bool Notificaciones)
        {
            Cls_Usuario_DAL Obj_Usuario_DAL = new Cls_Usuario_DAL();
            Cls_Usuario_BLL Obj_Usuario_BLL = new Cls_Usuario_BLL();

            Obj_Usuario_DAL.SCorreo = Correo;
            Obj_Usuario_DAL.SClave = Clave;
            Obj_Usuario_DAL.SNombre = Nombre;
            Obj_Usuario_DAL.SNotas = Notas;
            Obj_Usuario_DAL.STelefono = Telefono;
            Obj_Usuario_DAL.BNotificaciones = Notificaciones;

            Obj_Usuario_BLL.Insertar_Usuarios(ref Obj_Usuario_DAL);

            if (Obj_Usuario_DAL.SMsj_Error == string.Empty)
            {
                return "Usuario Agregado";
            }
            else
            {
                return "Error de conexion";
            }

        }
        public string InicioSesion(string Correo, string Clave)
        {
            Cls_Usuario_BLL Obj_Usuario_BLL = new Cls_Usuario_BLL();

            Obj_Usuario_BLL.Autenticar_Usuario2(Correo, Clave);

            if (Obj_Usuario_BLL.Autenticar_Usuario2(Correo, Clave).Equals(false))
            {
                return "Inicio exitoso";
            }
            else
            {
                return "Error de Inicio";
            }

        }

        public string Modificar_Usuario(short idUsuario, string Correo, string Clave, string Nombre, string Notas, string Telefono, bool Notificaciones)
        {
            Cls_Usuario_DAL Obj_Usuario_DAL = new Cls_Usuario_DAL();
            Cls_Usuario_BLL Obj_Usuario_BLL = new Cls_Usuario_BLL();
            Obj_Usuario_DAL.SCorreo = Correo;
            Obj_Usuario_DAL.SClave = Clave;
            Obj_Usuario_DAL.SNombre = Nombre;
            Obj_Usuario_DAL.SNotas = Notas;
            Obj_Usuario_DAL.STelefono = Telefono;
            Obj_Usuario_DAL.BNotificaciones = Notificaciones;
            Obj_Usuario_BLL.Modificar_Usuarios(ref Obj_Usuario_DAL, idUsuario);

            if (Obj_Usuario_DAL.SMsj_Error == string.Empty)
            {
                return "Usuario Modificado";
            }
            else
            {
                return "Error de conexion";
            }
        }

        //Hecho Por Juan Diego

        public DataTable ListarDatos(string sNombreSP)
        {
            Cls_BD_BLL obj_BD_BLL = new Cls_BD_BLL();
            Cls_BD_DAL obj_BD_DAL = new Cls_BD_DAL();
            return obj_BD_BLL.ExecuteDataAdapter(sNombreSP, "", SqlDbType.VarChar, "");
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
