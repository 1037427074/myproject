using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.DataAccess.Client;

namespace Online.QuestionsAndAnswers
{
    public partial class TitleDetails : System.Web.UI.Page
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
            string id =  Request.QueryString["id"];

            string sqlQ = "SELECT * from QUF where QU01 = '" + id + "'";
            DataTable tb = SqlHelper.ExcuteAdatper(sqlQ);

            TITLE.Text = tb.Rows[0]["QU02"].ToString();
            CONTENT.Text = tb.Rows[0]["QU03"].ToString();


            string sql = "SELECT * from ANF where QU01 = '"+id+"'";
           
            if(SqlHelper.ExcuteReader(sql).Read())
            {
                Q_null.Visible = false;
                DataTable dt = SqlHelper.ExcuteAdatper(sql);
                Rp_list.DataSource = dt;
                Rp_list.DataBind();
            }
            else
            {
                Q_null.Visible = true;
               
            }
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (reply.Visible == false)
            {
                reply.Visible = true;
            }
            else
            {
                if(reply.Text.Trim() =="")
                {
                    
                }
                else
                {
                    string S_reply = reply.Text.Trim();
                    string id = Request.QueryString["id"];
                    //执行回复操作
                    string sql = "INSERT into ANF(QU01,AN02,US02,AN03) VALUES(:QU01,:AN02,:US02,to_date('" + DateTime.Now + "','SYYYY-MM-DD HH24:MI:SS'))";
                    OracleParameter[] para = new OracleParameter[3];
                    para[0] = new OracleParameter("QU01", id);
                    para[1] = new OracleParameter("AN02", S_reply);
                    para[2] = new OracleParameter("US02", Session["S_user"].ToString());
                    if (SqlHelper.ExcuteNonQuery(sql, para) > 0)
                    {
                        Response.Write("<script>alert('回复成功！');window.location.href='TitleDetails.aspx?id=" + id+"';</script>");
                        reply.Visible = false;
                    }
                    else
                    {
                        Response.Write("<script>alert('回复失败，请稍后再试！');window.location.href='TitleDetails.aspx?id=" + id + "';</script>");
                    }
                   
                }
               
            }
           
        }
    }
}