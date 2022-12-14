using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvWebsiteProject
{
    public partial class Default : System.Web.UI.Page
    {
        //Database çağırma
        DbCvEntitiyEntities db = new DbCvEntitiyEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater1.DataSource = db.TblHakkimda.ToList();
            Repeater1.DataBind();

            Repeater2.DataSource = db.TblHakkimda.ToList();
            Repeater2.DataBind();

            Repeater3.DataSource = db.TblHakkimda.ToList();
            Repeater3.DataBind();

            Repeater4.DataSource = db.TblYetenekler.ToList();
            Repeater4.DataBind();
        }
    }
}