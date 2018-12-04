using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL_Special_Ticket.CAT_MANT
{
    public class Cls_Eventos_DAL
    {
        #region VARIABLES PRIVADAS


        private string _sDescripcionEv,
                       _sAX,
                       _sNomEvento,
                       _sCadena,
                       _sMsj_Error,
                       _sSetencia,
                       _sNombreTabla;

        private Boolean _bEstAX;




        #endregion

        #region VARIABLES PUBLICAS
        public string SDescripcionEv
        {
            get
            {
                return _sDescripcionEv;
            }

            set
            {
                _sDescripcionEv = value;
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

        public string SNomEvento
        {
            get
            {
                return _sNomEvento;
            }

            set
            {
                _sNomEvento = value;
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
        #endregion
        public SqlConnection Obj_Sql_cnx;

        public SqlCommand Obj_Sql_Cmd;

        public SqlDataAdapter Obj_Sql_Dap;

        public System.Data.DataSet Ds = new System.Data.DataSet();

        public System.Data.DataTable dt_PARAMETROS = new System.Data.DataTable("PARAMETROS");

    }
}
