using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

using BLL_Special_Ticket.BD;
using DAL_Special_Ticket.BD;

namespace SVC.Contract
{
    public class BD : Interface.IBD
    {
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
