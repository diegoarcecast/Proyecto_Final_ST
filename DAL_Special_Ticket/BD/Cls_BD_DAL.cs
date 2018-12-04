
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;

namespace DAL_Special_Ticket.BD
{
    public class Cls_BD_DAL
    {

        #region OBJETOS

        public DataTable _dt_Parametros = new DataTable("PARAMETROS");
        public SqlDataAdapter SQL_DA;
        public SqlCommand SQL_CMD;
        public SqlConnection SQL_CNX;
        public DataSet DS;

        public DataTable Dt_Parametros
        {
            get
            {
                return _dt_Parametros;
            }
            set
            {
                _dt_Parametros = value;
            }
        }

       

        #endregion

        #region VARIABLES PRIVADAS
        private string sMsjError, sCadenaConec, sNomTabla, sSentencia, sValorScalar;
        private bool _bBandError;
        #endregion

        #region VARIABLES PÚBLICAS
        public string SMsjError
        {
            get
            {
                return sMsjError;
            }

            set
            {
                sMsjError = value;
            }
        }

        public string SCadenaConec
        {
            get
            {
                return sCadenaConec;
            }

            set
            {
                sCadenaConec = value;
            }
        }

        public string SNomTabla
        {
            get
            {
                return sNomTabla;
            }

            set
            {
                sNomTabla = value;
            }
        }

        public string SSentencia
        {
            get
            {
                return sSentencia;
            }

            set
            {
                sSentencia = value;
            }
        }

        public string SValorScalar
        {
            get
            {
                return sValorScalar;
            }

            set
            {
                sValorScalar = value;
            }
        }

        public bool BBandError
        {
            get
            {
                return _bBandError;
            }

            set
            {
                _bBandError = value;
            }
        }
        #endregion
    }
}

