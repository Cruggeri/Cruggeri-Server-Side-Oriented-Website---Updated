<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Memberspage.aspx.cs" Inherits="Memberspage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6 center-block">

                <asp:Label id="myprofile" runat="server" Text="My Profile" Font-Size="40px" Font-Bold="True"></asp:Label> <br/><br/>


            </div>

            <div class="col-md-4" >

                <asp:Image ID="userImg" runat="server" Width="200px"/>
                <br/>
                <br/>
               <%-- <asp:Label ID="Label2" runat="server" Font-Size="20px" Font-Bold="True" Text="Registered User Benefits:"></asp:Label> <br/> <br/>
                <%--<asp:Button ID="submitButton" runat="server" Text="Sell your own product." OnClick="submitButton_Click"/> <br/>--%>
                <asp:Button ID="prButton" runat="server" Text="Check out these premium deals" OnClick="prButton_Click"/>--%>

            </div>
            <div class="col-md-6" style="background-color:#FFFF99; border:double 4px #CC3300">
                
                <asp:Label id="name" Font-Bold="True" runat="server" Font-Size="30px" Text=""></asp:Label>
                <asp:Label ID="surname" Font-Bold="True" Font-Size="30px" runat="server" Text=""></asp:Label>
                <br/>
                <br/>
                <asp:Label ID="Label3" Font-Size="18px" runat="server" Text="Username:"></asp:Label>
                <asp:Label ID="username" Font-Size="18px" runat="server" Text=""></asp:Label>
                <br/>
                <asp:Label ID="Label4" runat="server" Text="Password:" Font-Size="18px"></asp:Label>
                <asp:Label ID="password" runat="server" Text="" Font-Size="18px"></asp:Label>
                <br/>
                <asp:Label ID="Label5" Font-Size="18px" runat="server" Text="Gender:"></asp:Label>
                <asp:Label ID="gender" Font-Size="18px" runat="server" Text=""></asp:Label>
                <br/>
                <asp:Label ID="Label6" Font-Size="18px" runat="server" Text="Email Address:"></asp:Label>
                <asp:Label ID="emailAddress" Font-Size="18px" runat="server" Text="Label"></asp:Label>


                <br/>


            </div>
        </div>
    </div>
    <div>
    <br/>
          <asp:Button ID="editSelfButton" runat="server" Text="Change your password" />


        <div class="container">
            <div>
                <h3 id =" sellPanel" >Seller Panel-</h3>
            </div >
               <div class="container-fluid">
          <asp:Table ID="Table1"  runat="server" Width="1117px" BackColor="#CC6600" BorderColor="#CC3300" BorderStyle="Ridge" BorderWidth="5px" GridLines="Both" >
        <asp:TableHeaderRow ID="TableHeaderRow1" runat="server">
        <asp:TableHeaderCell ID="TableHeaderCell1" runat="server">Products Name:</asp:TableHeaderCell>
        <asp:TableHeaderCell ID="TableHeaderCell2" runat="server">Products Type:</asp:TableHeaderCell>
        <asp:TableHeaderCell ID="TableHeaderCell3" runat="server">Products Price:</asp:TableHeaderCell>
        <asp:TableHeaderCell ID="TableHeaderCell4" runat="server">Products Image:</asp:TableHeaderCell>
         <%--   <asp:TableHeaderCell ID="TableHeaderCell5" runat="server">Remove Product:</asp:TableHeaderCell>--%>
    </asp:TableHeaderRow>
    </asp:Table>
    
     </div>
    
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
        
       <h4>
            <asp:Label ID="Label9" runat="server" Text="Remove a product listing"></asp:Label>
            </h4>
            <asp:Label ID="Label10" runat="server" Text="Enter the name of the product to delete"></asp:Label>
            <br />
            <asp:Button ID="delProductButton" runat="server" Text="Delete Product" OnClick="delProductButton_Click" />
        
       
        <div>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="16px" Width="261px" DataSourceID="SqlDataSource2"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [prodName] FROM [Products]"></asp:SqlDataSource>
        
       </div>
        
            <br />
            <br />
        
       
        
          <br />
            <h4>
          <asp:Label ID="addItemLabel" runat="server" Text="Place an item up for sale" ></asp:Label>

            </h4>
          <br />
         
        
       
      <div style =" border-bottom-width:thick; background-color:#CC6600;">
        <div class="col-sm-4" style =" border-bottom-width:thick; back">
            <asp:Image ID="ProdImage" runat="server" Height="200px" Width="200px"></asp:Image> <br/>
            <asp:FileUpload ID="FileUpload1" runat="server"/>
            <asp:Button ID="Button2" ValidationGroup="image" runat="server" Text="Preview the picture" OnClick="Button2_Click"/>
        </div>
        <div class="col-sm-8">
            <asp:Label ID="Label1" runat="server" Text="Product Name:"></asp:Label>
            <asp:TextBox ID="prodName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="red" runat="server" ErrorMessage="Please enter the product's name." ControlToValidate="prodName"></asp:RequiredFieldValidator>
            <br/>
            <asp:Label ID="Label7" runat="server" Text="Product Type:"></asp:Label>
            &nbsp;<asp:TextBox ID="prodType" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="red" runat="server" ErrorMessage="Please enter the product's type." ControlToValidate="prodType"></asp:RequiredFieldValidator>

            <br/>
            <asp:Label ID="Label8" runat="server" Text="Product Price:"></asp:Label>
            &nbsp;<asp:TextBox ID="prodPrice" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="red" runat="server" ErrorMessage="Please enter the product's price." ControlToValidate="prodPrice"></asp:RequiredFieldValidator>   
    <%--<asp:Label ID="prNameLabel" runat="server" Text="Product Name: "></asp:Label>
    <asp:TextBox ID="prName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="nameRequiredFieldValidator" runat="server" ErrorMessage="Name field may not be left empty" ControlToValidate="prName" ForeColor="green"></asp:RequiredFieldValidator>      
    <br />
    <asp:Label ID="prTypeLabel" runat="server" Text="Product Type: "></asp:Label>
    <asp:DropDownList ID="prTypeDropDownList" runat="server">
        <asp:ListItem>none</asp:ListItem>
        <asp:ListItem>Shiny Rock</asp:ListItem>
        <asp:ListItem>Soap-on-a-Rope</asp:ListItem>
        <asp:ListItem>Welsh Person</asp:ListItem>
        <asp:ListItem>Shoe Contents</asp:ListItem>
    </asp:DropDownList>
        <asp:RequiredFieldValidator ID="prDDLRequiredFieldValidator" runat="server" ErrorMessage="Must choose a product type" ControlToValidate="prTypeDropDownList" ForeColor="orange" InitialValue="none"></asp:RequiredFieldValidator>
        <br />
          <asp:Label ID="uploadPicLabel1" runat="server" Text="you may upload an image of the item belowS"></asp:Label>
    <asp:FileUpload ID="picFileUpload" runat="server" />
        <asp:Label ID="picUpLabel" runat="server" Text=""></asp:Label>
        <asp:RequiredFieldValidator ID="picRequiredFieldValidator" runat="server" ErrorMessage="Must upload a picture" ControlToValidate="picFileUpload" ForeColor="Purple" Display="Dynamic"></asp:RequiredFieldValidator>
        <br />
        <asp:Image ID="inImage" runat="server" Height="135px" Width="157px" />>--%>
        <br />
<asp:Button ID="submitButton" runat="server" Text="submit" OnClick="saveButton_Click" />
    </div>
          </div>
          </div>

</asp:Content>