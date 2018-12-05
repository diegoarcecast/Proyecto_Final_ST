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
        DataTable FILTRARDatos(string sNombreSP, string sNombreParametro, SqlDbType DBType, string svalorparametro);

        [OperationContract]
       bool ConectarBD();

    
       [OperationContract]
       int SUMAR(int Valor_1, int Valor_2);

    }
}
