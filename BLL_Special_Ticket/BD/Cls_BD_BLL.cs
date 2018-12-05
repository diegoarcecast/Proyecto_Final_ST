using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

using DAL_Special_Ticket.BD;


namespace BLL_Special_Ticket.BD
{
    public class Cls_BD_BLL
    {
        Cls_BD_DAL Obj_BD_DAL = new Cls_BD_DAL();

        public string Conectar_BD()
        {
            try
            {
                Cls_BD_DAL Obj_BD_DAL = new Cls_BD_DAL();

                //por indice o por nombre
                Obj_BD_DAL.SCadenaConec = ConfigurationManager.ConnectionStrings[0].ToString();
                //creo obj conexion
                Obj_BD_DAL.SQL_CNX = new SqlConnection(Obj_BD_DAL.SCadenaConec);
                //abrir conex 
                if (Obj_BD_DAL.SQL_CNX.State == ConnectionState.Closed)
                {
                    Obj_BD_DAL.SQL_CNX.Open();
                }

                return string.Empty;
            }
            catch (Exception e)
            {
                return e.Message.ToString();

            }
        }
        public void Traer_Cnx(ref Cls_BD_DAL obj_BD_DAL)
        {
            try
            {
                obj_BD_DAL.SCadenaConec = ConfigurationManager.ConnectionStrings["WIN_AUT"].ToString();

                obj_BD_DAL.SQL_CNX = new SqlConnection(obj_BD_DAL.SCadenaConec);

                obj_BD_DAL.SMsjError = string.Empty;
                obj_BD_DAL.BBandError = false;
            }
            catch (Exception e)
            {
                obj_BD_DAL.SMsjError = e.Message.ToString();
                obj_BD_DAL.BBandError = true;
            }
        }
        public void Abrir_Cnx(ref Cls_BD_DAL obj_BD_DAL)
        {
            try
            {
                if (obj_BD_DAL.SQL_CNX.State == System.Data.ConnectionState.Closed)
                {
                    obj_BD_DAL.SQL_CNX.Open();
                }

                obj_BD_DAL.SMsjError = string.Empty;
                obj_BD_DAL.BBandError = false;
            }
            catch (SqlException e)
            {
                obj_BD_DAL.SMsjError = e.Message.ToString();
                obj_BD_DAL.BBandError = true;
            }
        }
        public void Exec_DataAdapter(ref Cls_BD_DAL obj_BD_DAL)
        {
            try
            {
                Traer_Cnx(ref obj_BD_DAL);

                if ((obj_BD_DAL.SMsjError == string.Empty) && (obj_BD_DAL.BBandError == false))
                {
                    Abrir_Cnx(ref obj_BD_DAL);


                    obj_BD_DAL.SQL_DA = new SqlDataAdapter(obj_BD_DAL.SSentencia, obj_BD_DAL.SQL_CNX);

                    #region Valido si hay o no parametros, para agregarlos

                    obj_BD_DAL.SQL_DA.SelectCommand.CommandType = CommandType.StoredProcedure;

                    if (obj_BD_DAL.Dt_Parametros.Rows.Count > 0)
                    {

                        foreach (DataRow dr in obj_BD_DAL.Dt_Parametros.Rows)
                        {
                            switch (dr[1].ToString())
                            {
                                case "1":
                                    {
                                       /// agreagamos parametros que va a consumir mi store procedure
                                        obj_BD_DAL.SQL_DA.SelectCommand.Parameters.Add(dr[0].ToString(),
                                                                                       SqlDbType.Int).Value = dr[2].ToString();
                                        break;
                                    }
                                case "2":
                                    {
                                       // agreagamos parametros que va a consumir mi store procedure
                                        obj_BD_DAL.SQL_DA.SelectCommand.Parameters.Add(dr[0].ToString(),
                                                                                       SqlDbType.NVarChar).Value = dr[2].ToString();
                                        break;
                                    }
                                case "3":
                                    {
                                        obj_BD_DAL.SQL_DA.SelectCommand.Parameters.Add(dr[0].ToString(),
                                                                                       SqlDbType.Char).Value = dr[2].ToString();
                                        break;
                                    }
                                case "4":
                                    {
                                        obj_BD_DAL.SQL_DA.SelectCommand.Parameters.Add(dr[0].ToString(), SqlDbType.VarChar).Value = dr[2].ToString();
                                        break;
                                    }
                                default:
                                    {
                                        break;
                                    }
                            }
                        }
                    }

                    #endregion

                    obj_BD_DAL.DS = new System.Data.DataSet();
                    obj_BD_DAL.SQL_DA.Fill(obj_BD_DAL.DS, obj_BD_DAL.SNomTabla);
                }

                obj_BD_DAL.SMsjError = string.Empty;
                obj_BD_DAL.BBandError = false;
            }
            catch (SqlException e)
            {
                obj_BD_DAL.SMsjError = e.Message.ToString();
                obj_BD_DAL.BBandError = true;
            }
            finally
            {
                if (obj_BD_DAL != null)
                {
                    if (obj_BD_DAL.SQL_CNX.State == System.Data.ConnectionState.Open)
                    {
                        obj_BD_DAL.SQL_CNX.Close();
                    }
                    //destruyo el objeto
                    obj_BD_DAL.SQL_CNX.Dispose();
                }
            }
        }
        public void Exec_NonQuery(ref Cls_BD_DAL obj_BD_DAL)
        {
            try
            {
                Traer_Cnx(ref obj_BD_DAL);

                if ((obj_BD_DAL.SMsjError == string.Empty) && (obj_BD_DAL.BBandError == false))
                {
                    Abrir_Cnx(ref obj_BD_DAL);

                    obj_BD_DAL.SQL_CMD = new SqlCommand(obj_BD_DAL.SSentencia, obj_BD_DAL.SQL_CNX);

                    #region Valido si hay o no parametros, para agregarlos

                    obj_BD_DAL.SQL_CMD.CommandType = CommandType.StoredProcedure;

                    if (obj_BD_DAL.Dt_Parametros.Rows.Count > 0)
                    {

                        foreach (DataRow dr in obj_BD_DAL.Dt_Parametros.Rows)
                        {
                            switch (dr[1].ToString())
                            {
                                case "1":
                                    {
                                        //agreagamos parametros que va a consumir mi store procedure 
                                        obj_BD_DAL.SQL_CMD.Parameters.Add(dr[0].ToString(),
                                                                                       SqlDbType.Int).Value = dr[2].ToString();
                                        break;
                                    }
                                case "2":
                                    {
                                        //agreagamos parametros que va a consumir mi store procedure 
                                        obj_BD_DAL.SQL_CMD.Parameters.Add(dr[0].ToString(),
                                                                                       SqlDbType.NVarChar).Value = dr[2].ToString();
                                        break;
                                    }
                                case "3":
                                    {
                                        obj_BD_DAL.SQL_CMD.Parameters.Add(dr[0].ToString(),
                                                                                       SqlDbType.Char).Value = dr[2].ToString();
                                        break;
                                    }
                                case "4":
                                    {
                                        obj_BD_DAL.SQL_CMD.Parameters.Add(dr[0].ToString(), SqlDbType.VarChar).Value = dr[2].ToString();
                                        break;
                                    }
                                default:
                                    {
                                        break;
                                    }
                            }
                        }
                    }

                    #endregion

                    obj_BD_DAL.SQL_CMD.ExecuteNonQuery();
                }

                obj_BD_DAL.SMsjError = string.Empty;
                obj_BD_DAL.BBandError = false;
            }
            catch (SqlException e)
            {
                obj_BD_DAL.SMsjError = e.Message.ToString();
                obj_BD_DAL.BBandError = true;
            }
            finally
            {
                if (obj_BD_DAL != null)
                {
                    if (obj_BD_DAL.SQL_CNX.State == System.Data.ConnectionState.Open)
                    {
                        obj_BD_DAL.SQL_CNX.Close();
                    }
                    //destruyo el objeto
                    obj_BD_DAL.SQL_CNX.Dispose();
                }
            }
        }
        public void Exec_Scalar(ref Cls_BD_DAL obj_BD_DAL)
        {
            try
            {
                Traer_Cnx(ref obj_BD_DAL);

                if ((obj_BD_DAL.SMsjError == string.Empty) && (obj_BD_DAL.BBandError == false))
                {
                    Abrir_Cnx(ref obj_BD_DAL);

                    obj_BD_DAL.SQL_CMD = new SqlCommand(obj_BD_DAL.SSentencia, obj_BD_DAL.SQL_CNX);

                    #region Valido si hay o no parametros, para agregarlos

                    obj_BD_DAL.SQL_CMD.CommandType = CommandType.StoredProcedure;

                    if (obj_BD_DAL.Dt_Parametros.Rows.Count > 0)
                    {

                        foreach (DataRow dr in obj_BD_DAL.Dt_Parametros.Rows)
                        {
                            switch (dr["TIPO_DATO"].ToString())
                            {
                                case "1":
                                    {
                                        //agreagamos parametros que va a consumir mi store procedure 
                                        obj_BD_DAL.SQL_CMD.Parameters.Add(dr["NOMBRE_CAMPO"].ToString(),
                                                                                       SqlDbType.Int).Value = dr["VALOR"].ToString();
                                        break;
                                    }
                                case "2":
                                    {
                                        //agreagamos parametros que va a consumir mi store procedure 
                                        obj_BD_DAL.SQL_CMD.Parameters.Add(dr["NOMBRE_CAMPO"].ToString(),
                                                                                       SqlDbType.NVarChar).Value = dr["VALOR"].ToString();
                                        break;
                                    }
                                case "3":
                                    {
                                        obj_BD_DAL.SQL_CMD.Parameters.Add(dr["NOMBRE_CAMPO"].ToString(),
                                                                                       SqlDbType.Char).Value = dr["VALOR"].ToString();
                                        break;
                                    }
                                case "4":
                                    {
                                        obj_BD_DAL.SQL_CMD.Parameters.Add(dr["NOMBRE_CAMPO"].ToString(), SqlDbType.VarChar).Value = dr["VALOR"].ToString();
                                        break;
                                    }
                                default:
                                    {
                                        break;
                                    }
                            }
                        }
                    }

                    #endregion

                    obj_BD_DAL.SValorScalar = obj_BD_DAL.SQL_CMD.ExecuteScalar().ToString();
                }

                obj_BD_DAL.SMsjError = string.Empty;

                obj_BD_DAL.BBandError = false;
            }
            catch (SqlException e)
            {
                obj_BD_DAL.SValorScalar = "";
                obj_BD_DAL.SMsjError = e.Message.ToString();
                obj_BD_DAL.BBandError = true;
            }
            finally
            {
                if (obj_BD_DAL != null)
                {
                    if (obj_BD_DAL.SQL_CNX.State == System.Data.ConnectionState.Open)
                    {
                        obj_BD_DAL.SQL_CNX.Close();
                    }
                    //destruyo el objeto
                    obj_BD_DAL.SQL_CNX.Dispose();
                }
            }
        }
        public void Crear_DT_Parametros(ref Cls_BD_DAL Obj_Conexion)
        {
            Obj_Conexion.Dt_Parametros.Columns.Add("NombreParam");
            Obj_Conexion.Dt_Parametros.Columns.Add("TipoDatoParam");
            Obj_Conexion.Dt_Parametros.Columns.Add("ValorParam");
        }
        public DataTable ExecuteDataAdapter(string s_Nombre_SP, string sNombreParametro, SqlDbType DBType, string svalorparametro)//NOMBRE DEL STORE PROCEDURE
        {
            try
            {
                Cls_BD_DAL Obj_BD_DAL = new Cls_BD_DAL();
                Obj_BD_DAL.SCadenaConec = ConfigurationManager.ConnectionStrings[1].ToString();
                Obj_BD_DAL.SQL_CNX = new SqlConnection(Obj_BD_DAL.SCadenaConec);
                if (Obj_BD_DAL.SQL_CNX.State == ConnectionState.Closed)
                {
                    Obj_BD_DAL.SQL_CNX.Open();
                }

                Obj_BD_DAL.SQL_DA = new SqlDataAdapter(s_Nombre_SP,Obj_BD_DAL.SQL_CNX);


                DataSet DS = new DataSet();

                Obj_BD_DAL.SQL_DA.SelectCommand.CommandType = CommandType.StoredProcedure;
                if (svalorparametro != string.Empty)
                {
                    Obj_BD_DAL.SQL_DA.SelectCommand.Parameters.Add(sNombreParametro, DBType).Value = svalorparametro;
                }
                Obj_BD_DAL.SQL_DA.Fill(DS);
                return DS.Tables[0];
            }
            catch (SqlException ex)
            {
                return null;
            }


        //    public Form1()
        //{
        //    InitializeComponent();
        //}

        //private void Form1_Load(object sender, EventArgs e)
        //{
        //    DataTable DT = new DataTable();
        //    ServiceReference1.BDClient Obj_WCF = new BDClient();
        //    DT = Obj_WCF.ListarDatos("sp_listar");

        //    dataGridView1.DataSource = DT;
        //    dataGridView1.Enabled = false;
        //}

        //private void textBox1_TextChanged(object sender, EventArgs e)
        //{
        //    DataTable DT = new DataTable();
        //    ServiceReference1.BDClient Obj_WCF = new BDClient();
        //    if (textBox1.Text.Trim() == string.Empty)
        //    {

        //        DT = Obj_WCF.ListarDatos("sp_listar");

        //        dataGridView1.DataSource = DT;
        //    }
        //    else
        //    {
        //        DT = Obj_WCF.FILTRARDatos("sp_FILTRAR", "@CompanyName", SqlDbType.NVarChar, textBox1.Text.Trim());

        //        dataGridView1.DataSource = DT;
        //    }
        //}
    }
    }

  
}
