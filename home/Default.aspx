<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Cleveral._Default" %>

<%@ MasterType VirtualPath="~/Site.Master" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="TopContent" runat="server">
    <meta name="viewport" content="initial-scale=1.0">
    <meta charset="utf-8">
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script>
        $(document).ready(function () {
            $('[data-toggle="tooltip"]').tooltip();
        });
    </script>
    <style type="text/css">

        .dashboardSummaryAlert .dashboardSummaryCounter {
            color: red;
        }

        .dashboardSummaryAlert .dashboardSummaryText {
            color: red;
        }


        .dashboardSummaryWarning .dashboardSummaryCounter {
            color: #FFD20F;
        }

        .dashboardSummaryWarning .dashboardSummaryText {
            color: #FFD20F;
        }

        .dashboardSummaryNewNotifiche {
            border-color: #FF7811;
        }

            .dashboardSummaryNewNotifiche .dashboardSummaryCounter {
                color: #FF7811;
            }

            .dashboardSummaryNewNotifiche .dashboardSummaryText {
                color: #FF7811;
            }

        .dashboardSummaryOldNotifiche .dashboardSummaryCounter {
            color: #007F0E;
        }

        .dashboardSummaryOldNotifiche .dashboardSummaryText {
            color: #007F0E;
        }

        .dashboardSummary:hover {
            background-color: #F5F5F5;
            box-shadow: 0px 0px 1px 1px rgba(0,0,0,0.20);
            color: #4BA8D5;
        }

        .dashboardSummaryCounter {
            font-size: 30px;
            max-height: 30px;
            position: absolute;
        }

        .dashboardSummaryText {
            font-size: 14px;
            margin-top: 4px;
            text-align: left;
        }

        .btnSearch {
            width: 25px;
            padding: 2px;
            border-left: 0px;
        }
    </style>

    <div class="container">
        <div class="row evidence" style="display: none;">
            <h1>Cleveral</h1>
            <p class="lead">The Clever Structural Monitoring</p>
            <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
        </div>

        <div class="row" style="display: none;">
            <div class="col-sm-6">
                <div class="dashboardSummary dashboardSummaryNewNotifiche col-xs-12">
                    <div class="col-xs-2">
                        <asp:Image ID="Image2" runat="server" ImageUrl="~/img/trafficCone.png" AlternateText="alert" Style="width: 58px; margin: 15px 20px 10px -13px;" />
                    </div>
                    <div class="col-xs-10" style="text-align: right;">
                        <div class="dashboardSummaryCounter">
                            <asp:Label ID="Label3" runat="server" Text="8"></asp:Label>
                        </div>
                        <div class="dashboardSummaryText">
                            <asp:Label ID="Label4" runat="server" Text="Notifiche in lavorazione"></asp:Label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="dashboardSummary dashboardSummaryOldNotifiche col-xs-12">
                    <div class="col-xs-2">
                        <asp:Image ID="Image3" runat="server" ImageUrl="~/img/trafficConeLight.png" AlternateText="alert" Style="width: 58px; margin: 15px 20px 10px -13px;" />
                    </div>
                    <div class="col-xs-10" style="text-align: right;">
                        <div class="dashboardSummaryCounter">
                            <asp:Label ID="Label5" runat="server" Text="359"></asp:Label>
                        </div>
                        <div class="dashboardSummaryText">
                            <asp:Label ID="Label6" runat="server" Text="Notifiche elaborate"></asp:Label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4" style="padding: 0px;">
                <div class="col-sm-12" style="overflow: hidden; padding: 0px 0px 5px 0px;">
                    <%--<div class="col-sm-6" style="padding: 10px 5px 0px 5px;">
                        <div class="dashboardSummary dashboardSummaryAlert col-xs-12" style="text-align: center;">
                            <div class="dashboardSummaryCounter">
                                <asp:Label ID="CounterSummaryWarning" runat="server" Text="34"></asp:Label>
                            </div>
                            <div class="dashboardSummaryText">
                                <asp:Image ID="logoAlarm" runat="server" AlternateText="alert" Style="width: 25px; margin: 0px 5px 5px 0px;" />
                                <asp:Label ID="HeaderSummaryWarning" runat="server" Text="Alarm" Style="font-weight: bold;"></asp:Label>
                            </div>
                        </div>
                    </div>--%>
                    <div class="col-sm-6" style="padding: 10px 5px 0px 5px;">
                        <div class="dashboardSummary dashboardSummaryAlert col-xs-12" style="text-align: center;">
                            <div class="col-xs-4">
                                <asp:Image ID="logoAlarm" runat="server" AlternateText="alarm" Style="width: 45px; margin: 10px 0px 5px 0px;" />
                            </div>
                            <div class="dashboardSummaryText col-xs-8">
                                <asp:Label ID="CounterSummaryAlarm" runat="server" Text="34" CssClass="dashboardSummaryCounter"></asp:Label>
                                <div style="margin-top: 30px">
                                    <asp:Label ID="HeaderSummaryWarning" runat="server" Text="Alarm" Style="font-weight: bold;"></asp:Label>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6" style="padding: 10px 5px 0px 5px;">
                        <div class="dashboardSummary dashboardSummaryWarning col-xs-12" style="text-align: center;">
                            <div class="col-xs-4">

                                <asp:Image ID="logoWarning" runat="server" AlternateText="warning" Style="width: 45px; margin: 10px 0px 5px 0px;" />
                            </div>
                            <div class="dashboardSummaryText col-xs-8">
                                <asp:Label ID="CounterSummaryWarning" runat="server" Text="127" CssClass="dashboardSummaryCounter"></asp:Label>
                                <div style="margin-top: 30px">
                                    <asp:Label ID="Label2" runat="server" Text="Warning" Style="font-weight: bold;"></asp:Label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-12" style="margin-top: -5px; padding: 0px 5px;">
                    <div class="diagramContainer">
                        <div class="diagramHeader">
                            <h2>Anomalies</h2>
                            <div>
                                <asp:LinkButton ID="NumRecords" runat="server" CssClass="headerNum" data-toggle="tooltip" title="Visualizza tutte le anomalie" Text="0"></asp:LinkButton>
                            </div>
                        </div>
                        <div class="diagramContent" style="padding: 0px;">
                            <asp:GridView ID="Alerts" runat="server" AutoGenerateColumns="false" CssClass="dashboardNotify" OnRowDataBound="Alerts_RowDataBound">
                                <Columns>
                                    <asp:TemplateField HeaderText="Date">
                                        <HeaderTemplate>
                                            <div class="col-xs-12 tbContainer">

                                                <div class="col-xs-5 dashboardCellHeader">
                                                    <asp:Label ID="CreationDateLabel" runat="server" Text="Date"></asp:Label>
                                                </div>
                                                <div class="col-xs-5 dashboardCellHeader">
                                                    <asp:Label ID="CityLabel" runat="server" Text="Location"></asp:Label>
                                                </div>
                                                <div class="col-xs-2 dashboardCellHeader">
                                                </div>
                                            </div>
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <div class="col-xs-12 tbContainer dashboardLink">
                                                <asp:HyperLink ID="GoToAlert" runat="server" NavigateUrl="StructureDetail.aspx" Target="_blank" Style="overflow: hidden; width: 100%; height: 100%; display: block;">

                                                    <div class="col-xs-5 dashboardCell">
                                                        <asp:Label ID="CreationDate" runat="Server" Text='<%# GetDate(Eval("CreationDate").ToString()) %>' />
                                                    </div>
                                                    <div class="col-xs-5 dashboardCell">
                                                        <asp:Label ID="City" runat="Server" Text='<%# Eval("City") + " (" + Eval("Plate") + ")" %>' />
                                                    </div>
                                                    <div class="col-xs-2" style="padding-top: 5px;">
                                                        <asp:HiddenField ID="IdAnomaly" runat="Server" Value='<%# Eval("IdAnomaly") %>' />
                                                        <asp:Image ID="AnomalyImg" runat="server" AlternateText="Anomaly" Height="30" />
                                                    </div>
                                                </asp:HyperLink>
                                            </div>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                </div>
                <asp:Label ID="PageContent" runat="server"></asp:Label>

                <div class="col-sm-12" style="margin-top: 0px; padding: 0px 5px;">
                    <div class="diagramContainer">
                        <div class="diagramHeader">
                            <h2>Processing</h2>
                            <div>
                                <asp:LinkButton ID="NumProcessing" runat="server" CssClass="headerNum" data-toggle="tooltip" title="Visualizza tutte le notifiche in lavorazione" Text="0"></asp:LinkButton>
                            </div>
                        </div>
                        <div class="diagramContent" style="padding: 0px;">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CssClass="dashboardNotify" OnRowDataBound="Alerts_RowDataBound">
                                <Columns>
                                    <asp:TemplateField HeaderText="Date">
                                        <HeaderTemplate>
                                            <div class="col-xs-12 tbContainer">

                                                <div class="col-xs-5 dashboardCellHeader">
                                                    <asp:Label ID="CreationDateLabel" runat="server" Text="Data"></asp:Label>
                                                </div>
                                                <div class="col-xs-5 dashboardCellHeader">
                                                    <asp:Label ID="CityLabel" runat="server" Text="Località"></asp:Label>
                                                </div>
                                                <div class="col-xs-2 dashboardCellHeader">
                                                </div>
                                            </div>
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <div class="col-xs-12 tbContainer dashboardLink">
                                                <asp:HyperLink ID="GoToAlert" runat="server" NavigateUrl="StructureDetail.aspx.cs" Target="_blank" Style="overflow: hidden; width: 100%; height: 100%; display: block;">

                                                    <div class="col-xs-5 dashboardCell">
                                                        <asp:Label ID="CreationDate" runat="Server" Text='<%# GetDate(Eval("CreationDate").ToString()) %>' />
                                                    </div>
                                                    <div class="col-xs-5 dashboardCell">
                                                        <asp:Label ID="City" runat="Server" Text='<%# Eval("City") + " (" + Eval("Plate") + ")" %>' />
                                                    </div>
                                                    <div class="col-xs-2" style="padding-top: 5px;">
                                                        <asp:HiddenField ID="IdAnomaly" runat="Server" Value='<%# Eval("IdAnomaly") %>' />
                                                        <asp:Image ID="AnomalyImg" runat="server" AlternateText="Anomaly" Height="30" />
                                                    </div>
                                                </asp:HyperLink>
                                            </div>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-8" style="padding: 0px 5px;">
                <div class="mapContainer">
                    <div class="row rowManage">
                        <div class="col-sm-7"></div>
                        <div class="col-sm-5" style="padding: 0px;">
                            <div class="col-xs-11">
                                <div class="input-group">
                                    <asp:TextBox ID="SearchMap" runat="server" CssClass="form-control" Style="width: 150px; height: 25px;"></asp:TextBox>
                                    <asp:LinkButton ID="SearchMapButton" runat="server" CssClass="btn btnSearch input-group-addon">
                                    <span aria-hidden="true" class="glyphicon glyphicon-search"></span>
                                    </asp:LinkButton>

                                    <span style="padding: 8px 20px 0px 5px; text-decoration: underline;">
                                        <asp:LinkButton ID="SearchMapAdvanced" runat="server" Text="details">
                                        </asp:LinkButton>
                                    </span>
                                </div>
                            </div>
                            <div class="col-xs-1" style="padding: 0px;" align="right">
                                <div class="input-group">
                                    <div class="input-group-btn">
                                        <asp:LinkButton ID="ManageMap" runat="server" CssClass="btn dropdown-toggle btnUtility" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                    <span aria-hidden="true" class="glyphicon glyphicon-cog"></span>
                                        </asp:LinkButton>

                                        <ul class="dropdown-menu dropdown-menu-right" aria-labelledby="ManageMap" style="right: 0px; left: inherit;">
                                            <li><a href="#">Action</a></li>
                                            <li><a href="#">Another action</a></li>
                                            <li><a href="#">Something else here</a></li>
                                            <li role="separator" class="divider"></li>
                                            <li><a href="#">Separated link</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>

                        </div>

                    </div>

                    <div id="map" style="padding: 0px 4px;">
                        <div class="filtri">
                            <div class="infoSection">
                                <div class="infoTitle">
                                    <asp:Label ID="Label9" runat="server" Text="Anomalies"></asp:Label>
                                </div>
                                <div class="infoText">
                                    <asp:CheckBox ID="AlarmFilerMap" runat="server" Checked="true"></asp:CheckBox>&nbsp;<asp:Label ID="Label7" runat="server" Text="Alarm"></asp:Label><br />
                                    <asp:CheckBox ID="CheckBox1" runat="server" Checked="true"></asp:CheckBox>&nbsp;<asp:Label ID="Label1" runat="server" Text="Warning"></asp:Label><br />
                                    <asp:CheckBox ID="CheckBox2" runat="server" Checked="true"></asp:CheckBox>&nbsp;<asp:Label ID="Label8" runat="server" Text="Normal"></asp:Label><br />
                                </div>
                            </div>
                            <div class="infoSection">
                                <div class="infoTitle">
                                    <asp:Label ID="Label10" runat="server" Text="Region"></asp:Label>
                                </div>
                                <div class="infoText">
                                    <asp:CheckBox ID="CheckBox3" runat="server" Checked="true"></asp:CheckBox>&nbsp;<asp:Label ID="Label11" runat="server" Text="Emilia Romagna"></asp:Label><br />
                                    <asp:CheckBox ID="CheckBox6" runat="server" Checked="true"></asp:CheckBox>&nbsp;<asp:Label ID="Label14" runat="server" Text="Friuli Venezia Giulia"></asp:Label><br />
                                    <asp:CheckBox ID="CheckBox4" runat="server" Checked="true"></asp:CheckBox>&nbsp;<asp:Label ID="Label12" runat="server" Text="Lombardia"></asp:Label><br />
                                    <asp:CheckBox ID="CheckBox5" runat="server" Checked="true"></asp:CheckBox>&nbsp;<asp:Label ID="Label13" runat="server" Text="Veneto"></asp:Label><br />
                                </div>
                            </div>
                        </div>
                        <iframe name="myIframe" id="myIframe" width="100%" height="600px" runat="server" src="MapItaly.html"></iframe>
                    </div>
                    <p style="display: none">
                        <a class="btn btn-default">Dettaglio &raquo;</a>
                    </p>

                </div>
            </div>
        </div>
    </div>
</asp:Content>
