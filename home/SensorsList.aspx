<%@ Page Title="Sensors" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SensorsList.aspx.cs" Inherits="Cleveral.SensorsList" %>

<%@ MasterType VirtualPath="~/Site.Master" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="TopContent" runat="server">
    <meta name="viewport" content="initial-scale=1.0">
    <meta charset="utf-8">
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
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
    </script>
    <style type="text/css">

    </style>

    <div class="container">
        <h2>Chiesa di Santa Maria Lacrimosa degli Alemanni</h2>

        <div class="row">
            <div class="col-md-3" style="padding: 0px 5px">

                <div class="diagramContainer" style="padding: 10px; margin-top: 5px;">
                    <div class="diagramHeader">
                        <h2>Structure details</h2>
                    </div>
                    <div style="width: 50%; margin-left: 25%; margin-top: 10px;">
                        <asp:LinkButton ID="LinkStructureImage" runat="server" CssClass="thumbnail">
                            <asp:Image ID="StructureImage" runat="server" ImageUrl="~/img/mvp/structure/alemanni100.jpg" Style="width: 100%; max-height: 250px;" />
                            <span class="glyphicon glyphicon-pencil"></span>
                        </asp:LinkButton>
                    </div>


                    <div style="margin-top: 10px">
                        <div class="infoStructureSection">
                            <h5>Structure</h5>
                            <div style="margin-left: 10px;">
                                <b>
                                    <asp:Label ID="Label4" runat="server" Text="Address:"></asp:Label></b>&nbsp;<asp:Label ID="Label5" runat="server" Text="Via Mazzini, 65"></asp:Label><br />
                                <b>
                                    <asp:Label ID="Label2" runat="server" Text="Province:"></asp:Label></b>&nbsp;<asp:Label ID="Test" runat="server" Text="Bologna (BO)"></asp:Label><br />
                            </div>
                        </div>

                        <div class="infoStructureSection">
                            <h5>Service</h5>
                            <div style="margin-left: 10px;">
                                <b>
                                    <asp:Label ID="Label9" runat="server" Text="Monitoring type:"></asp:Label></b>&nbsp;<asp:Label ID="Label10" runat="server" Text="structural monitoring"></asp:Label><br />
                                <b>
                                    <asp:Label ID="Label11" runat="server" Text="Monitoring strat date:"></asp:Label></b>&nbsp;<asp:Label ID="Label12" runat="server" Text="12/09/2016"></asp:Label><br />
                            </div>
                        </div>

                        <div class="infoStructureSection">
                            <h5>Contatti</h5>
                            <div style="margin-left: 10px;">
                                <b>
                                    <asp:Label ID="Label14" runat="server" Text="Client:"></asp:Label></b>&nbsp;<asp:LinkButton ID="LinkButton2" runat="server">
                                        <span aria-hidden="true" class="glyphicon glyphicon-user"></span>
                                        <asp:Label ID="Label15" runat="server" Text="Mario Rossi"></asp:Label>
                                    </asp:LinkButton><br />
                                <b>
                                    <asp:Label ID="Label1" runat="server" Text="Telephone:"></asp:Label></b>&nbsp;<asp:Label ID="Label3" runat="server" Text="051 429 2857"></asp:Label><br />
                                <b>
                                    <asp:Label ID="Label6" runat="server" Text="Email:"></asp:Label></b>&nbsp;<asp:Label ID="Label7" runat="server" Text="chiesaAlemanni@gmail.com"></asp:Label><br />
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
                                    <asp:Label ID="Label8" runat="server" Text="Final report"></asp:Label>
                                </asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </div>


            </div>

            <div class="col-md-6" style="padding: 0px;">
                <div class="col-sm-6" style="padding: 0px 5px;">
                    <div class="diagramContainer graphic col-xs-12">
                        <div class="row rowManage">
                            <div class="col-sm-6" style="padding: 0px;">
                                <asp:LinkButton ID="LinkButton3" runat="server" Text="Temperature"></asp:LinkButton>
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
                                <asp:LinkButton ID="LinkButton8" runat="server" Text="Humidity"></asp:LinkButton>
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
                                <asp:LinkButton ID="Sensoretest" runat="server" Text="Strain gauges 1">Strain gauges 1</asp:LinkButton>
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
                                <asp:LinkButton ID="LinkButton6" runat="server" Text="Strain gauges 2">Strain gauges 2</asp:LinkButton>
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
                            <asp:Label ID="Sensore5" runat="server" Text="Strain gauges 3"></asp:Label>
                            <div id="sensore5Chart" class="graphicChart"></div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6" style="padding: 0px 5px;">
                    <div class="diagramContainer graphic col-xs-12">
                        <div>
                            <asp:Label ID="Sensore6" runat="server" Text="Strain gauges 4"></asp:Label>
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

                                        <div class="col-xs-8 dashboardCellHeader" style="padding-left: 30px">
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

                                            <div class="col-xs-8 dashboardCell" style="padding-left: 30px">
                                                <span id="MainContent_Alerts_CreationDate_0">Area 1</span>
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

                                            <div class="col-xs-8 dashboardCell" style="padding-left: 30px">
                                                <span id="MainContent_Alerts_CreationDate_0">Area 2</span>
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

                                            <div class="col-xs-8 dashboardCell" style="padding-left: 30px">
                                                <span id="MainContent_Alerts_CreationDate_0">Area 3</span>
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

                                            <div class="col-xs-8 dashboardCell" style="padding-left: 30px">
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
                <asp:Label ID="Label33" runat="server"></asp:Label>


            </div>

        </div>
    </div>
</asp:Content>

