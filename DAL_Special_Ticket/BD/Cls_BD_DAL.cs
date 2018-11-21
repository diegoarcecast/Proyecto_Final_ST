
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace DAL_Special_Ticket.BD
{
    public class Cls_BD_DAL
    {
        private string sMsjError, sCadenaConec;

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

        public SqlConnection Obj_SQL_CNX;

        public SqlDataAdapter Obj_SQL_DAP;

        public SqlCommand Obj_SQL_CMD;

    }
}
