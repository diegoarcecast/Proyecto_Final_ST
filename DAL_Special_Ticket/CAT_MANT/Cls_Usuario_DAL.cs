using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL_Special_Ticket.CAT_MANT
{
    public class Cls_Usuario_DAL
    {
        #region VARIABLES PRIVADAS


        private string _sCorreo,
                       _sNotas,
                       _sClave,
                       _sNombre,
                       _sAX,
                       _sCadena,
                       _sMsj_Error,
                       _sSetencia,
                       _sNombreTabla,
            _sTelefono;

        

        private Boolean _bEstAX,
                        _bNotificaciones;




        #endregion

        #region VARIABLES PUBLICAS
        public string SCorreo
        {
            get
            {
                return _sCorreo;
            }

            set
            {
                _sCorreo = value;
            }
        }

        public string SNotas
        {
            get
            {
                return _sNotas;
            }

            set
            {
                _sNotas = value;
            }
        }

        public string SClave
        {
            get
            {
                return _sClave;
            }

            set
            {
                _sClave = value;
            }
        }

        public string SNombre
        {
            get
            {
                return _sNombre;
            }

            set
            {
                _sNombre = value;
            }
        }

        public string SAX
        {
            get
            {
                return _sAX;
            }

            set
            {
                _sAX = value;
            }
        }

        public string SCadena
        {
            get
            {
                return _sCadena;
            }

            set
            {
                _sCadena = value;
            }
        }

        public string SMsj_Error
        {
            get
            {
                return _sMsj_Error;
            }

            set
            {
                _sMsj_Error = value;
            }
        }

        public string SSetencia
        {
            get
            {
                return _sSetencia;
            }

            set
            {
                _sSetencia = value;
            }
        }

        public string SNombreTabla
        {
            get
            {
                return _sNombreTabla;
            }

            set
            {
                _sNombreTabla = value;
            }
        }

        

        public bool BEstAX
        {
            get
            {
                return _bEstAX;
            }

            set
            {
                _bEstAX = value;
            }
        }

        public bool BNotificaciones
        {
            get
            {
                return _bNotificaciones;
            }

            set
            {
                _bNotificaciones = value;
            }
        }

        public string STelefono
        {
            get
            {
                return _sTelefono;
            }

            set
            {
                _sTelefono = value;
            }
        }

        #endregion
        public SqlConnection Obj_Sql_cnx;

        public SqlCommand Obj_Sql_Cmd;

        public SqlDataAdapter Obj_Sql_Dap;

        public System.Data.DataSet Ds = new System.Data.DataSet();

        public System.Data.DataTable dt_PARAMETROS = new System.Data.DataTable("PARAMETROS");


    }
}
