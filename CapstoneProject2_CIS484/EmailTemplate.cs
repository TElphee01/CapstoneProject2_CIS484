using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CapstoneProject2_CIS484
{
    using System;
    using System.Collections.Generic;

    public partial class EmailTemplate
    {
        public string toAddress { get; set; }
        public string subject { get; set; }
        public int body { get; set; }
    }
}