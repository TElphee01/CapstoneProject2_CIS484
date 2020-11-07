using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CapstoneProject2_CIS484
{
    public class EmailTemplate
    {
        public string toAddress;
        public string subject;
        public string body;

        public string ToAddress
        {
            get
            {
                return toAddress;
            }

            set
            {
                toAddress = value;
            }
        }
        public string Subject
        {
            get
            {
                return subject;
            }

            set
            {
                subject = value;
            }
        }
        public string Body
        {
            get
            {
                return body;
            }

            set
            {
                body = value;
            }
        }
    }
}