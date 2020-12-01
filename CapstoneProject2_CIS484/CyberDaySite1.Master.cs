using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Windows.Forms;


namespace CapstoneProject2_CIS484
{
    public partial class CyberDaySite1 : System.Web.UI.MasterPage
    {
        public static int UserLoginID;
        public static string UserLoginName = null;
        public static string UserLoginEmail = null;
        public static string UserLoginType = "Coordinator";
        public static int CoordinatorID = -1;

        public enum MessageType { Success, Error, Info, Warning };

        protected void Page_Load(object sender, EventArgs e)
        {
            //accessCodeContentPlaceHolder.Visible = false;

            if (LoginDiv.Style["display"] != "none")
            {
                UserLoginType = null;
                UserLoginID = -1;
                UserLoginName = null;
                UserLoginEmail = null;
            }
        }

        protected void MasterMenu_MenuItemClick(object sender, MenuEventArgs e)
        {
            System.Web.UI.WebControls.Menu MasterMenu = sender as System.Web.UI.WebControls.Menu;
            MultiView multiTabs = this.FindControl("MasterMultiView") as MultiView;
            //MessageBox.Show(UserLoginType + Int32.Parse(MasterMenu.SelectedValue));

            MasterMultiView.ActiveViewIndex = Int32.Parse(MasterMenu.SelectedValue);

            //ScriptManager.RegisterStartupScript(this, this.GetType(), System.Guid.NewGuid().ToString(), "ShowMessage('Not Authorized to Access this page!','Warning');", true);
            //ScriptManager.RegisterStartupScript(Page, Page.GetType(), "modalLoginForm", "$('#modalLoginForm').modal();", true);
        }

        protected void menuTabsCurrent_MenuItemClick(object sender, MenuEventArgs e)
        {
            System.Web.UI.WebControls.Menu menuTabsCurrent = sender as System.Web.UI.WebControls.Menu;
            MultiView multiTabs = this.FindControl("multiviewStudent") as MultiView;
            multiTabs.ActiveViewIndex = Int32.Parse(menuTabsCurrent.SelectedValue);
        }

        //protected void TeacherMenu_MenuItemClick(object sender, MenuEventArgs e)
        //{
        //    System.Web.UI.WebControls.Menu TeacherMenu = sender as System.Web.UI.WebControls.Menu;
        //    MultiView multiTabs = this.FindControl("TeacherView") as MultiView;
        //    multiTabs.ActiveViewIndex = Int32.Parse(TeacherMenu.SelectedValue);
        //}

        //protected void VolunteerMenu_MenuItemClick(object sender, MenuEventArgs e)
        //{
        //    System.Web.UI.WebControls.Menu VolunteerMenu = sender as System.Web.UI.WebControls.Menu;
        //    MultiView multiTabs = this.FindControl("VolunteerMultiView") as MultiView;
        //    multiTabs.ActiveViewIndex = Int32.Parse(VolunteerMenu.SelectedValue);
        //}

        //protected void CoordinatorMenu_MenuItemClick(object sender, MenuEventArgs e)
        //{
        //    System.Web.UI.WebControls.Menu CoordinatorMenu = sender as System.Web.UI.WebControls.Menu;
        //    MultiView multiTabs = this.FindControl("CoordinatorMultiView") as MultiView;
        //    multiTabs.ActiveViewIndex = Int32.Parse(CoordinatorMenu.SelectedValue);
        //}

        protected void ShowMessage(string Message, MessageType type)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), System.Guid.NewGuid().ToString(), "ShowMessage('" + Message + "','" + type + "');", true);
        }

        protected void LoginForm_Click(object sender, EventArgs e)
        {
            if (UserLoginType != null)
            {
                UserLoginType = null;
                UserLoginID = -1;
                UserLoginName = null;
                UserLoginEmail = null;
                //LoginForm.InnerHtml = "Launch Login Form";
                //MasterMenu.Items[5].Text = "User: None";
            }
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            string Username = HttpUtility.HtmlEncode(defaultFormEmail.Text);
            string pass = HttpUtility.HtmlEncode(defaultFormPass.Text);
            string type = "Select UserLoginType from Coordinator where Username = " + Username;
            SqlConnection CDMConnection = new SqlConnection(WebConfigurationManager.ConnectionStrings["CyberCityDB"].ConnectionString);
            SqlCommand loginCommand = new SqlCommand();
            loginCommand.Connection = CDMConnection;
            CDMConnection.Open();
            System.Data.SqlClient.SqlCommand findPass = new System.Data.SqlClient.SqlCommand();
            findPass.Connection = CDMConnection;
            findPass.CommandText = "Select Password from CoordinatorAuth where Username = @Username";
            findPass.Parameters.Add(new SqlParameter("@Username", Username));

            SqlDataReader reader = findPass.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    string storeHash = reader["Password"].ToString();

                    if (PasswordHash.ValidatePassword(pass, storeHash))
                    {
                        UserLoginName = Username;
                        ShowMessage("Logged in successfully as " + UserLoginName.Trim() + " Role: Coordinator! " + UserLoginType, MessageType.Success);
                    }
                    else
                    {
                        MessageBox.Show("Password is wrong!");
                    }
                }
            }
            else 
            {
                MessageBox.Show("Usename is wrong!");
            }

                //dbConnection.Close();
                CDMConnection.Close();
                MasterMenu.Items.RemoveAt(1);
                //System.Web.UI.WebControls.MenuItem myItem = new System.Web.UI.WebControls.MenuItem("CoordinatorView", "2");
                //MasterMenu.Items.AddAt(1, myItem);
                System.Web.UI.WebControls.MenuItem myItem2 = new System.Web.UI.WebControls.MenuItem("Add Event", "3");
                MasterMenu.Items.AddAt(1, myItem2);
            System.Web.UI.WebControls.MenuItem myItem3 = new System.Web.UI.WebControls.MenuItem("Add Teacher", "4");
            MasterMenu.Items.AddAt(2, myItem3);
            System.Web.UI.WebControls.MenuItem myItem4 = new System.Web.UI.WebControls.MenuItem("Add Volunteer", "5");
            MasterMenu.Items.AddAt(3, myItem4);
            //ShowMessage("Heard! " + Username, MessageType.Info);
        }

        //protected void Instructor_MenuItemClick(object sender, MenuEventArgs e)
        //{
        //    System.Web.UI.WebControls.Menu Intructor = sender as System.Web.UI.WebControls.Menu;
        //    MultiView multiTabs = this.FindControl("InstructorView") as MultiView;
        //    multiTabs.ActiveViewIndex = Int32.Parse(MasterMenu.SelectedValue);
        //}

        //protected void Volunteer_MenuItemClick(object sender, MenuEventArgs e)
        //{
        //    System.Web.UI.WebControls.Menu Volunteer = sender as System.Web.UI.WebControls.Menu;
        //    MultiView multiTabs = this.FindControl("VolunteerView") as MultiView;
        //    multiTabs.ActiveViewIndex = Int32.Parse(MasterMenu.SelectedValue);
        //}
    }
}