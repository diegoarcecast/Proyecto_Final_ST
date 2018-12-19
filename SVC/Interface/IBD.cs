using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.Data;


namespace SVC.Interface
{
    [ServiceContract]

    public interface IBD
    {
        [OperationContract]
        DataTable ListarDatos(string sNombreSP);
        [OperationContract]
        string Insertar_Usuarios(string Correo, string Clave, string Nombre, string Notas, int Telefono, bool Notificaciones);
        [OperationContract]
        string InicioSesion(string Correo, string Clave);
        [OperationContract]
        string Modificar_Usuario(string Correo, string Clave, string Nombre, string Notas, int Telefono, bool Notificaciones);

        [OperationContract]
        DataTable FILTRARDatos(string sNombreSP, string sNombreParametro, SqlDbType DBType, string svalorparametro);

        [OperationContract]
       bool ConectarBD();

    
       [OperationContract]
       int SUMAR(int Valor_1, int Valor_2);

    }
}
