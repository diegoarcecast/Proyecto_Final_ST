using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;


namespace DAL_Special_Ticket.CAT_MANT
{
    public class Cls_Zona_DAL
    {
        #region VARIABLES PRIVADAS


        private string _sNombreZona,
                       _sTipoZona,
                        _sAX,
                       _sCadena,
                       _sMsj_Error,
                       _sSetencia,
                       _sNombreTabla;

        byte idZona;



        private Boolean _bEstAX,
                        _estado;






        #endregion

        #region VARIABLES PUBLICAS

        public string STipoZona
        {
            get
            {
                return _sTipoZona;
            }

            set
            {
                _sTipoZona = value;
            }
        }
        public bool Bestado
        {
            get
            {
                return _estado;
            }

            set
            {
                _estado = value;
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

        public string SNombreZona
        {
            get
            {
                return _sNombreZona;
            }

            set
            {
                _sNombreZona = value;
            }
        }

        public byte IdZona
        {
            get
            {
                return idZona;
            }

            set
            {
                idZona = value;
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

        #endregion


        public SqlConnection Obj_Sql_cnx;

        public SqlCommand Obj_Sql_Cmd;

        public SqlDataAdapter Obj_Sql_Dap;

        public System.Data.DataSet Ds = new System.Data.DataSet();

        public System.Data.DataTable dt_PARAMETROS = new System.Data.DataTable("PARAMETROS");


    }
}
