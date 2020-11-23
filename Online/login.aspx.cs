using Oracle.DataAccess.Client;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                typeBaid();
            }
           
        }

        public void typeBaid()
        {
            L_type.Items.Add("学生");
            L_type.Items.Add("教师");
            L_type.Items.Add("管理员");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string user = L_user.Text.Trim();
            string pwd = L_pwd.Text.Trim();
            string type = L_type.SelectedValue.Trim();

            //Oracle写法是在参数前面加 : 这个符号
            string sql = "select * from LOF where LO02 = :LO02 and LO03 = :LO03 and LO04 =:LO04";

            OracleParameter[] para = new OracleParameter[3];
            para[0] = new OracleParameter("LO02", user);
            para[1] = new OracleParameter("LO03", pwd);
            para[2] = new OracleParameter("LO04", type);

            if (SqlHelper.ExcuteReader(sql, para).Read())
            {
                Session["S_user"] = user;
                Session["S_type"] = type;
                Response.Write("<script>alert('成功登录！')</script>");
                Response.Redirect("/index/index.aspx");
            }
            else
            {
                Response.Write("<script>alert('账号密码或身份不正确！')</script>");
            }
        }
    }
}