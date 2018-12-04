using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace SVC.Interface
{
    [ServiceContract]

    public interface IBD
    {
     
       [OperationContract]
       bool ConectarBD();

        
    }
}
