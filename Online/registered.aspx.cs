using Oracle.DataAccess.Client;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online
{
    public partial class registered : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string user = Z_user.Text.Trim();
            string pwd = Z_pwd.Text.Trim();
            string type = "";
            if (Z_typeS.Checked)
            {
                type = "学生";
            }
            else if (Z_typeT.Checked)
            {
                type = "教师";
            }

            if (Z_user.Text == "")
            {
                Response.Write("<script>alert('请输入用户名！')</script>");
            }
            else if (Z_pwd.Text == "")
            {
                Response.Write("<script>alert('请输入密码！')</script>");
            }
            else
            {
                string sql = "insert into LOF(LO02,LO03,LO04,LO05) values (:LO02,:LO03,:LO04,to_date('" + DateTime.Now + "','SYYYY-MM-DD HH24:MI:SS'))";


                OracleParameter[] para = new OracleParameter[3];
                para[0] = new OracleParameter("LO02", user);
                para[1] = new OracleParameter("LO03", pwd);
                para[2] = new OracleParameter("LO04", type);

                if (SqlHelper.ExcuteNonQuery(sql, para) > 0)
                {
                    Z_user.Text = "";
                    Response.Write("<script>alert('注册成功！')</script>");
                    Response.Redirect("login.aspx");
                }
                else
                {
                    Response.Write("<script>alert('注册失败！')</script>");
                }
            }



        }

        protected void Z_user_TextChanged(object sender, EventArgs e)
        {
            string user = Z_user.Text.Trim();
            string Sql = "select * from LOF where LO02 = '" + user + "'";

            if (SqlHelper.ExcuteReader(Sql).Read())
            {
                Response.Write("<script>alert('用户名已存在！')</script>");
                Z_user.Text = "";
            }
        }
    }
}