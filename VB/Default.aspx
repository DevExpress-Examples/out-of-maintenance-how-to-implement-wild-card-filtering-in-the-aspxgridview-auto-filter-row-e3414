﻿<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            Set the row menu of both columns to Like ('%','_')            
            <br />
            Filter the Category Name column by the "be__rages" string
            <br />
            Filter the Description column by the "%oft%" string
            <br />
            <br />
            <dx:ASPxGridView ID="gvCategory" runat="server" DataSourceID="dsNWind" KeyFieldName="CategoryID"
                AutoGenerateColumns="False">
                <Columns>
                    <dx:GridViewDataTextColumn FieldName="CategoryID" VisibleIndex="0">
                        <Settings AllowAutoFilter="False" />
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="CategoryName" VisibleIndex="1" >                        
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Description" VisibleIndex="2">                        
                    </dx:GridViewDataTextColumn>
                </Columns>
                <SettingsPager Visible="False">
                </SettingsPager>
                <Settings ShowFilterRow="True" ShowFilterRowMenuLikeItem="true" ShowFilterRowMenu="true"/>
            </dx:ASPxGridView>
            <asp:AccessDataSource ID="dsNWind" runat="server" DataFile="~/App_Data/nwind.mdb"
                SelectCommand="SELECT [CategoryID], [CategoryName], [Description] FROM [Categories]"></asp:AccessDataSource>
        </div>
    </form>
</body>
</html>