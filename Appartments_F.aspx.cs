using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Appartments_F : System.Web.UI.Page
{
    TowerProvider_F t = new TowerProvider_F();

    public static int MaxTowerID;
    public static int CurrentFloor;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            loadallfloors();
            tab_container.ActiveTabIndex = 1;
            loadtowers();
        }

    }
    private void loadtowers()
    {
        ddl_tower.DataSource = t.getall();
        ddl_tower.AppendDataBoundItems = true;
        ddl_tower.Items.Insert(0, new ListItem("---اختر البرج--", "0"));
        ddl_tower.DataValueField = "ID";
        ddl_tower.DataTextField = "NAME";
        ddl_tower.DataBind();
    }
    protected void btn_save_Click(object sender, EventArgs e)
    {
        if (btn_save.Text.Equals("حفظ"))
        {

          
            addfloors();

        }
        else
        {
            Update(ID);
            btn_save.Text = "حفظ";
        }
        loadallfloors();
        tab_container.ActiveTabIndex = 0;
      
      //  txt_towername.Text = "";

    }

    private void loadallfloors()
    {
        gv_data.DataSource = t.getall_floor();
        gv_data.DataBind();
    }

    private void Update(string ID)
    {

    }

    private void Addtower()
    {
        // DateTime date = (DateTime.ParseExact(txt_startworking.Text, "dd/MM/yyyy", System.Globalization.CultureInfo.InvariantCulture));
     //   t.addobject(txt_towername.Text, "", txt_address.Text);
        GetMaxTowerID();

    }

    private void addfloors()
    {
       /////////// 31 / 10 /2015 t.addobject_floor(Convert.ToInt32(ddl_tower.SelectedValue), ddl_floor.SelectedItem.Text, ddl_appartno.SelectedItem.Text, "Available");

    }

    private void GetMaxTowerID()
    {
        //DataTable dt = new DataTable();
        // dt = t.getMaxTowerID();
        //  MaxTowerID = Convert.ToInt32(dt.Rows[0]["ID"]);

    }
    //private void loademptytable()
    //{
    //    int NoOffloors =Convert.ToInt32(txt_NoOfFloors.Text);
    //    int NoOapartperfloor = Convert.ToInt32(txt_NoOfappartments.Text);
    //    DataTable dt1 = new DataTable();
    //    dt1.Columns.Add("TowerID");
    //    dt1.Columns.Add("Appartmenno");

    //    for (int i = 1; i <= NoOffloors; i++)
    //    {
    //        for (int j = 1; j <= NoOapartperfloor; j++)
    //        {
    //            dt1.Rows.Add(i.ToString() + "0", i.ToString() + j.ToString());
    //        }
    //    }



    //    //int NoOffloors ;
    //    //int NoOapartperfloor = 3;
    //    //DataTable dt = new DataTable();
    //    //dt.Columns.Add("TowerID");
    //    //dt.Columns.Add("Appartmenno");

    //    //for (int i = 1; i < 9; i++)
    //    //{

    //    //        DataRow row = dt.Rows.Add();
    //    //        dt.Rows[i - 1]["Appartmenno"] = i.ToString();
    //    //        dt.Rows[i - 1]["TowerID"] = i.ToString() ;

    //    //    }
    //    //}
    //    //gv_drugs_company.DataSource = dt;
    //    //gv_drugs_company.DataBind();
    //}
    protected void btn_cancel_Click(object sender, EventArgs e)
    {

        for (int i = 1; i < 10; i++)
        {
            //if (i % 2 !=0)
            //{
            //    txt_loop.Text+= i;
            //}
            // txt_loop.Text +="1"+ i ;

        }
    }
    protected void img_delete_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void gv_data_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {





        }
    }
}