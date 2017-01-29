<%@ Page Title="Sensors" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SensorsList.aspx.cs" Inherits="Cleveral.SensorsList" %>

<%@ MasterType VirtualPath="~/Site.Master" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="TopContent" runat="server">
    <meta name="viewport" content="initial-scale=1.0">
    <meta charset="utf-8">
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script src="../Scripts/jquery-ui.min.js"></script>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
        google.charts.load('current', { 'packages': ['line'] });
        google.charts.setOnLoadCallback(drawChart);

        function drawChart() {

            var data1 = new google.visualization.DataTable();
            data1.addColumn('number', '');
            data1.addColumn('number', 'Sensore 1');

            data1.addRows([
              [1, 37.8],
              [2, 30.9],
              [3, 25.4],
              [4, 11.7],
              [5, 11.9],
              [6, 8.8],
              [7, 7.6],
              [8, 12.3],
              [9, 16.9],
              [10, 12.8],
              [11, 5.3],
              [12, 6.6],
              [13, 4.8],
              [14, 4.2]
            ]);

            var data2 = new google.visualization.DataTable();
            data2.addColumn('number', '');
            data2.addColumn('number', 'Sensore 1');

            data2.addRows([
              [1, 80.8],
              [2, 69.5],
              [3, 57],
              [4, 18.8],
              [5, 17.6],
              [6, 13.6],
              [7, 12.3],
              [8, 29.2],
              [9, 42.9],
              [10, 30.9],
              [11, 7.9],
              [12, 8.4],
              [13, 6.3],
              [14, 6.2]
            ]);


            var data3 = new google.visualization.DataTable();
            data3.addColumn('number', '');
            data3.addColumn('number', 'Sensore 1');

            data3.addRows([
              [1, 41.8],
              [2, 32.4],
              [3, 25.7],
              [4, 10.5],
              [5, 10.4],
              [6, 7.7],
              [7, 9.6],
              [8, 10.6],
              [9, 14.8],
              [10, 11.6],
              [11, 4.7],
              [12, 5.2],
              [13, 3.6],
              [14, 3.4]
            ]);

            var options = {
                legend: { position: 'none' },
                hAxis: {
                    textPosition: 'none'
                },
                vAxis: {
                    textPosition: 'none'
                }
            };

            var chart1 = new google.charts.Line(document.getElementById('sensore1Chart'));

            chart1.draw(data1, options);

            var chart2 = new google.charts.Line(document.getElementById('sensore2Chart'));

            chart2.draw(data2, options);

            var chart3 = new google.charts.Line(document.getElementById('sensore3Chart'));

            chart3.draw(data3, options);

            var chart4 = new google.charts.Line(document.getElementById('sensore4Chart'));

            chart4.draw(data3, options);

            var chart5 = new google.charts.Line(document.getElementById('sensore5Chart'));

            chart5.draw(data1, options);

            var chart6 = new google.charts.Line(document.getElementById('sensore6Chart'));

            chart6.draw(data2, options);


        }

        $(document).ready(function () {
            $('[data-toggle="tooltip"]').tooltip();
        });


        if (top.location.href != self.location.href)
            top.location.href = self.location.href;

        $(function () {
            function addUser() {
            }

            dialog = $("#dialog-form").dialog({
                autoOpen: false,
                height: 450,
                width: 400,
                modal: true,
                buttons: {
                    "Save": addUser,
                    Cancel: function () {
                        dialog.dialog("close");
                    }
                },
                close: function () {
                    form[0].reset();
                    allFields.removeClass("ui-state-error");
                }
            });

            $("#edit-structure").button().on("click", function () {
                event.preventDefault();
                dialog.dialog("open");
            });
        });
    </script>
    <style type="text/css">

    </style>

    <div class="container">
        <h2><asp:Label ID="TitlePage" runat="server" Text="Linea elettrica 132 Kv Semplice Terna “Agordo – Vellai”"></asp:Label></h2>

        <div class="row">
<div class="col-md-3" style="padding: 0px 5px">

                <div class="diagramContainer" style="padding: 10px; margin-top: 5px;">
                    <div class="diagramHeader">
                        <h2>Structure details</h2>
                    </div>
                    <div style="width: 50%; margin-left: 25%; margin-top: 10px;">
                        <asp:LinkButton ID="LinkStructureImage" runat="server" CssClass="thumbnail">
                            <asp:Image ID="StructureImage" runat="server" Style="width: 100%; max-height: 250px;" />
                            <span class="glyphicon glyphicon-pencil"></span>
                        </asp:LinkButton>
                    </div>

                    <div class="infoStructure">
                        <div class="infoStructureSection">
                            <h5>Structure</h5>
                            <div style="margin-left: 10px;">
                                <b>
                                    <asp:Label ID="LineDescr" runat="server" Text="Line:"></asp:Label></b>&nbsp;<asp:Label ID="Line" runat="server" Text="Agordo – Vellai"></asp:Label><br />
                                <b>
                                    <asp:Label ID="ProvinceDescr" runat="server" Text="Province:"></asp:Label></b>&nbsp;<asp:Label ID="Province" runat="server" Text="Santa Giustina (BL)"></asp:Label><br />
                                <b>
                                    <asp:Label ID="LatitudeDescr" runat="server" Text="Latitude:"></asp:Label></b>&nbsp;<asp:Label ID="Latitude" runat="server" Text="46.080528"></asp:Label><br />
                                <b>
                                    <asp:Label ID="LongitudeDescr" runat="server" Text="Longitude:"></asp:Label></b>&nbsp;<asp:Label ID="Longitude" runat="server" Text="12.039681"></asp:Label><br />
                            </div>
                        </div>

                        <div class="infoStructureSection">
                            <h5>Service</h5>
                            <div style="margin-left: 10px;">
                                <b>
                                    <asp:Label ID="Label9" runat="server" Text="Monitoring type:"></asp:Label></b>&nbsp;<asp:Label ID="Label10" runat="server" Text="structural monitoring"></asp:Label><br />
                                <b>
                                    <asp:Label ID="Label11" runat="server" Text="Monitoring start date:"></asp:Label></b>&nbsp;<asp:Label ID="Label12" runat="server" Text="12/09/2016"></asp:Label><br />
                            </div>
                        </div>

                        <div class="infoStructureSection">
                            <h5>Contacts</h5>
                            <div style="margin-left: 10px;">
                                <b>
                                    <asp:Label ID="Label14" runat="server" Text="Referent:"></asp:Label></b>&nbsp;<asp:LinkButton ID="LinkButton2" runat="server">
                                        <span aria-hidden="true" class="glyphicon glyphicon-user"></span>
                                        <asp:Label ID="Label15" runat="server" Text="Mario Rossi"></asp:Label>
                                    </asp:LinkButton><br />
                                <b>
                                    <asp:Label ID="Label1" runat="server" Text="Telephone:"></asp:Label></b>&nbsp;<asp:Label ID="Label3" runat="server" Text="051 429 2857"></asp:Label><br />
                                <b>
                                    <asp:Label ID="Label6" runat="server" Text="Email:"></asp:Label></b>&nbsp;<asp:Label ID="Label7" runat="server" Text="mario.rossi@gmail.com"></asp:Label><br />
                            </div>
                        </div>
                        <div class="infoStructureSection">
                            <h5>Documents</h5>
                            <div style="margin-left: 10px;">
                                <asp:LinkButton ID="LinkButton1" runat="server">
                                    <span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
                                    <asp:Label ID="Label13" runat="server" Text="Technical notes"></asp:Label>
                                </asp:LinkButton><br />
                                <asp:LinkButton ID="Report" runat="server">
                                    <span aria-hidden="true" class="glyphicon glyphicon-download-alt"></span>
                                    <asp:Label ID="Label8" runat="server" Text="Installation report"></asp:Label>
                                </asp:LinkButton>
                            </div>
                        </div>
                        <div style="text-align: right">
                            <button id="edit-structure" type="button" class="btn btn-primary btn-xs"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>&nbsp;Modify</button>
                        </div>
                    </div>
                </div>

                <div id="dialog-form" title="Structure details">
                    <fieldset>
                        <div class="infoStructure">
                            <div class="infoStructureSection">
                                <h5>Structure</h5>
                                <div style="margin-left: 10px;">
                                    <table>
                                        <tr>
                                            <td>
                                                <b>
                                                    <asp:Label ID="Label16" runat="server" Text="Address:"></asp:Label></b>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="Label17" runat="server" Text="Via Mazzini, 65" CssClass="text ui-widget-content ui-corner-all"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <b>
                                                    <asp:Label ID="Label18" runat="server" Text="Province:"></asp:Label></b>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="Label19" runat="server" Text="Bologna (BO)" CssClass="text ui-widget-content ui-corner-all"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>

                            <div class="infoStructureSection">
                                <h5>Service</h5>

                                <div style="margin-left: 10px;">
                                    <table>
                                        <tr>
                                            <td><b><asp:Label ID="Label20" runat="server" Text="Monitoring type:"></asp:Label></b></td>
                                            <td><asp:TextBox ID="Label21" runat="server" Text="structural monitoring" CssClass="text ui-widget-content ui-corner-all"></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td><b><asp:Label ID="Label22" runat="server" Text="Monitoring strat date:"></asp:Label></b></td>
                                            <td><asp:TextBox ID="Label23" runat="server" Text="12/09/2016" CssClass="text ui-widget-content ui-corner-all"></asp:TextBox></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>

                            <div class="infoStructureSection">
                                <h5>Contatti</h5>
                                <div style="margin-left: 10px;">
                                    <table>
                                        <tr>
                                            <td><b><span aria-hidden="true" class="glyphicon glyphicon-user"></span><asp:Label ID="Label24" runat="server" Text="Client:"></asp:Label></b></td>
                                            <td><asp:LinkButton ID="LinkButton4" runat="server">
                                            <asp:TextBox ID="Label25" runat="server" Text="Mario Rossi" CssClass="text ui-widget-content ui-corner-all"></asp:TextBox>
                                        </asp:LinkButton></td>
                                        </tr>
                                        <tr>
                                            <td><b><asp:Label ID="Label26" runat="server" Text="Telephone:"></asp:Label></b></td>
                                            <td><asp:TextBox ID="Label27" runat="server" Text="051 429 2857"></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td><b><asp:Label ID="Label28" runat="server" Text="Email:"></asp:Label></b></td>
                                            <td><asp:TextBox ID="Label29" runat="server" Text="chiesaAlemanni@gmail.com" CssClass="text ui-widget-content ui-corner-all"></asp:TextBox></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>

                        <!-- Allow form submission with keyboard without duplicating the dialog button -->
                        <input type="submit" tabindex="-1" style="position: absolute; top: -1000px">
                    </fieldset>
                </div>
            </div>
            <div class="col-md-6" style="padding: 0px;">
                <div class="col-sm-6" style="padding: 0px 5px;">
                    <div class="diagramContainer graphic col-xs-12">
                        <div class="row rowManage">
                            <div class="col-sm-6" style="padding: 0px;">
                                <asp:LinkButton ID="LinkButton3" runat="server" Text="Frequency"></asp:LinkButton>
                            </div>
                            <div class="col-sm-6">
                                <div class="col-xs-11">
                                    <span class="label label-warning">Warning</span>
                                </div>
                                <div class="col-xs-1" style="padding: 0px;">
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

                        <div id="sensore1Chart" class="graphicChart"></div>
                    </div>
                </div>
                <div class="col-sm-6" style="padding: 0px 5px;">
                    <div id="notifica1" class="sticker"></div>
                    <div class="diagramContainer graphic col-xs-12">
                        <div class="row rowManage">
                            <div class="col-sm-6" style="padding: 0px;">
                                <asp:LinkButton ID="LinkButton8" runat="server" Text="Temperature"></asp:LinkButton>
                            </div>
                            <div class="col-sm-6">
                                <div class="col-xs-11">
                                    <span class="label label-danger">Alarm</span>
                                </div>
                                <div class="col-xs-1" style="padding: 0px;">
                                    <div class="input-group">
                                        <div class="input-group-btn">
                                            <asp:LinkButton ID="LinkButton10" runat="server" CssClass="btn dropdown-toggle btnUtility" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
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

                        <div>

                            <div id="sensore2Chart" class="graphicChart"></div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6" style="padding: 0px 5px;">
                    <div class="diagramContainer graphic col-xs-12">
                        <div style="overflow: hidden; margin: 0px 5px 4px 5px;">
                            <div style="float: left">
                                <asp:LinkButton ID="Sensoretest" runat="server" Text="Slope"></asp:LinkButton>
                            </div>
                            <div style="float: right">
                                <div style="float: left">
                                    <asp:LinkButton ID="LinkButton5" runat="server" CssClass=" btn btnUtility">
                                    <span aria-hidden="true" class="glyphicon glyphicon-cog"></span>
                                    </asp:LinkButton>
                                </div>
                            </div>
                        </div>
                        <div>

                            <div id="sensore3Chart" class="graphicChart"></div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6" style="padding: 0px 5px;">
                    <div class="diagramContainer graphic col-xs-12">

                        <div style="overflow: hidden; margin: 0px 5px 4px 5px;">
                            <div style="float: left">
                                <asp:LinkButton ID="LinkButton6" runat="server" Text="Relative Humidity"></asp:LinkButton>
                            </div>
                            <div style="float: right">
                                <div style="float: left">
                                    <asp:LinkButton ID="LinkButton7" runat="server" CssClass=" btn btnUtility">
                                    <span aria-hidden="true" class="glyphicon glyphicon-cog"></span>
                                    </asp:LinkButton>
                                </div>
                            </div>
                        </div>
                        <div>

                            <div id="sensore4Chart" class="graphicChart"></div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6" style="padding: 0px 5px;">
                    <div class="diagramContainer graphic col-xs-12">
                        <div>
                            <asp:Label ID="Sensore5" runat="server" Text="CO2"></asp:Label>
                            <div id="sensore5Chart" class="graphicChart"></div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6" style="padding: 0px 5px;">
                    <div class="diagramContainer graphic col-xs-12">
                        <div>
                            <asp:Label ID="Sensore6" runat="server" Text="Electric insulation"></asp:Label>
                            <div id="sensore6Chart" class="graphicChart"></div>
                        </div>
                    </div>
                </div>
                <%--<div class="col-sm-8" style="padding: 0px 5px;">
                    <div class="diagramContainer graphic col-xs-12">
                        <div>
                            <asp:Label ID="Label16" runat="server" Text="Insieme sensori"></asp:Label>
                            <div id="sensore7Chart" class="graphicChart"></div>
                        </div>
                    </div>
                </div>--%>
            </div>

<div class="col-md-3" style="padding: 0px 5px">

                <div class="diagramContainer" style="padding: 10px; margin-top: 5px;">
                    <div class="diagramHeader">
                        <h2>Structure status</h2>
                    </div>
                    <div class="diagramContent" style="padding: 0px;">
                        <table class="dashboardNotify" cellspacing="0" rules="all" border="1" id="MainContent_Alerts" style="border-collapse: collapse;">
                            <tr>
                                <th scope="col">
                                    <div class="col-xs-12 tbContainer">
                                        <div class="col-xs-2"></div>
                                        <div class="col-xs-6 dashboardCellHeader">
                                            <span id="MainContent_Alerts_CreationDateLabel">Area</span>
                                        </div>
                                        <div class="col-xs-4 dashboardCellHeader">
                                            <span id="MainContent_Alerts_CityLabel">Status</span>
                                        </div>

                                    </div>
                                </th>
                            </tr>
                            <tr>
                                <td>
                                    <div class="col-xs-12 tbContainer dashboardLink">
                                        <a id="MainContent_Alerts_GoToAlert_0" href="StructureDetail.aspx" target="_blank" style="overflow: hidden; width: 100%; height: 100%; display: block;">
                                            <div class="col-xs-2 dashboardImg">
                                                <asp:Image ID="Area1Img" runat="server" AlternateText="Electric" ImageUrl="~/img/terna/electric.png"  />
                                            </div>
                                            <div class="col-xs-6 dashboardCell">
                                                <span id="MainContent_Alerts_CreationDate_0">Electric</span>
                                            </div>
                                            <div class="col-xs-4" style="padding-top: 10px;">
                                                <div id="status1" class="structureStatus structureStatusNormal"></div>
                                            </div>
                                        </a>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="col-xs-12 tbContainer dashboardLink">
                                        <a id="MainContent_Alerts_GoToAlert_0" href="StructureDetail.aspx" target="_blank" style="overflow: hidden; width: 100%; height: 100%; display: block;">
                                            <div class="col-xs-2 dashboardImg">
                                                <asp:Image ID="Area2Img" runat="server" AlternateText="Structure" ImageUrl="~/img/terna/structure.png"  />
                                            </div>
                                            <div class="col-xs-6 dashboardCell">
                                                <span id="MainContent_Alerts_CreationDate_0">Structure</span>
                                            </div>
                                            <div class="col-xs-4" style="padding-top: 10px;">
                                                <div id="status1" class="structureStatus structureStatusWarning"></div>
                                            </div>
                                        </a>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="col-xs-12 tbContainer dashboardLink">
                                        <a id="MainContent_Alerts_GoToAlert_0" href="StructureDetail.aspx" target="_blank" style="overflow: hidden; width: 100%; height: 100%; display: block;">
                                            <div class="col-xs-2 dashboardImg">
                                                <asp:Image ID="Area3Img" runat="server" AlternateText="Natural hazard" ImageUrl="~/img/terna/naturalHazard.png"  />
                                            </div>
                                            <div class="col-xs-6 dashboardCell">
                                                <span id="MainContent_Alerts_CreationDate_0">Natural hazard</span>
                                            </div>
                                            <div class="col-xs-4" style="padding-top: 10px;">
                                                <div id="status1" class="structureStatus structureStatusNormal"></div>
                                            </div>
                                        </a>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="col-xs-12 tbContainer dashboardLink">
                                        <a id="MainContent_Alerts_GoToAlert_0" href="StructureDetail.aspx" target="_blank" style="overflow: hidden; width: 100%; height: 100%; display: block;">
                                            <div class="col-xs-2"></div>
                                            <div class="col-xs-6 dashboardCell">
                                                <span id="MainContent_Alerts_CreationDate_0">Global</span>
                                            </div>
                                            <div class="col-xs-4" style="padding-top: 10px;">
                                                <div id="status1" class="structureStatus structureStatusWarning"></div>
                                            </div>
                                        </a>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>

                <div class="diagramContainer" style="padding: 10px; margin-top: 5px;">
                    <div class="diagramHeader">
                        <h2>History</h2>
                    </div>



                </div>

            </div>
        </div>
    </div>
</asp:Content>

