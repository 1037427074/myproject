using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.UI.HtmlControls;

namespace Online.LearningDocuments
{
    public partial class VideoMaterial : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Rp_list_Bind();
            }
        }


        public void Rp_list_Bind()
        {
            //string sql = "select * from VIF  ORDER BY VI02 DESC";
            //DataTable tb = SqlHelper.ExcuteAdatper(sql);
            //Rp_list.DataSource = tb;
            //Rp_list.DataBind();




            string sqll = "SELECT DISTINCT VI02 from VIF ";
            DataTable unity = SqlHelper.ExcuteAdatper(sqll);
          

            foreach (DataRow row in unity.Rows)
            {
                Label textUnit = new Label();
                textUnit.Text = row["VI02"].ToString();

                
                ul.Controls.Add(new LiteralControl("<h2  class='lie'>"));

                ul.Controls.Add(textUnit);

                ul.Controls.Add(new LiteralControl("</h2>"));

                string sqlT = "SELECT  * from VIF where VI02 = '" + textUnit.Text + "'";
                DataTable title = SqlHelper.ExcuteAdatper(sqlT);
                foreach (DataRow til in title.Rows)
                {
                    Label textTitle = new Label();
                    textTitle.Text = til["VI03"].ToString();
                    string id = til["VI01"].ToString();
                    ul.Controls.Add(new LiteralControl("<div class='layui - colla - content layui - show'><div class='layui - collapse'> <div class='layui - colla - item'><h2 class='layui-colla-content layui-show'>  <a href='VideoMaterial.aspx?videoName=" + id + "'>"));
                    ul.Controls.Add(textTitle);
                    ul.Controls.Add(new LiteralControl("</a></h2></div></div> </div>"));
                }



            }

         



        }
    }
}