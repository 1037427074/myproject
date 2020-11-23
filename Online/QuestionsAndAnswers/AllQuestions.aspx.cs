using Oracle.DataAccess.Client;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online.QuestionsAndAnswers
{
    public partial class AllQuestions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                myQuestion.Visible = false;
                Rp_list_Bind();
            }
        }

        public void Rp_list_Bind()
        {
            string sqlstr = "select * from QUF";
            DataTable dt = SqlHelper.ExcuteAdatper(sqlstr);
            Rp_list.DataSource = dt;
            Rp_list.DataBind();
        }

        public void Rp_list_Bind(string like)
        {
            string sqlstr = "select * from QUF where QU02 like '%"+like+"%' or QU03 like '%"+like+"%'";
            DataTable dt = SqlHelper.ExcuteAdatper(sqlstr);
            Rp_list.DataSource = dt;
            Rp_list.DataBind();
        }




        protected void Button4_Click(object sender, EventArgs e)
        {
            string title = Q_title.Text.Trim();
            string content = Q_content.Text.Trim();
            string In_str = "insert into QUF(US02,QU02,QU03,QU04) VALUES(:US02,:QU02,:QU03,:QU04)";
            OracleParameter[] para = new OracleParameter[4];
            para[0] = new OracleParameter("US02", Session["S_user"].ToString());
            para[1] = new OracleParameter("QU02", title);
            para[2] = new OracleParameter("QU03", content);
            para[3] = new OracleParameter("QU04", DateTime.Now);


            if (SqlHelper.ExcuteNonQuery(In_str, para) > 0)
            {
                Response.Write("<script>alert('发表成功，请耐心等待解答！');window.location.href='AllQuestions.aspx';</script>");
                
            }
            else
            {
                Response.Write("<script>alert('发表失败！请稍后再试');window.location.href='AllQuestions.aspx';</script>");
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            Rp_list_Bind(likeText.Text.Trim());
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            myQuestion.Visible = true;
            string sqlstr = "select * from QUF where US02 = '"+Session["S_user"].ToString()+"'";
            DataTable dt = SqlHelper.ExcuteAdatper(sqlstr);
            Rp_list.DataSource = dt;
            Rp_list.DataBind();
        }
    }
}