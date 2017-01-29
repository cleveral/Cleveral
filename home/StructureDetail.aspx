<%@ Page Title="Detail" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StructureDetail.aspx.cs" Inherits="Cleveral.StructureDetail" %>

<%@ MasterType VirtualPath="~/Site.Master" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="TopContent" runat="server">
    <meta name="viewport" content="initial-scale=1.0">
    <meta charset="utf-8">
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script src="../Scripts/jquery-ui.min.js"></script>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
        google.charts.load('current', { 'packages': ['scatter'] });
        google.charts.setOnLoadCallback(drawChart);

        function drawChart() {

            var data = new google.visualization.DataTable();
            data.addColumn('number', 'Second component');
            data.addColumn('number', 'Hours Monitoring');
            data.addColumn('number', 'Final');

            data.addRows([
              [0, 0, 67], [1, 1, 88], [2, 2, 77],
              [3, 3, 93], [4, 4, 85], [5, 5, 91],
              [6, 6, 71], [7, 7, 78], [8, 8, 93],
              [9, 9, 80], [10, 10, 82], [11, 0, 75],
              [12, 5, 80], [13, 3, 90], [14, 1, 72],
              [15, 5, 75], [16, 6, 68], [17, 7, 98],
              [18, 3, 82], [19, 9, 94], [20, 2, 79],
              [21, 2, 95], [22, 2, 86], [23, 3, 67],
              [24, 4, 60], [25, 2, 80], [26, 6, 92],
              [27, 2, 81], [28, 8, 79], [29, 9, 83]
            ]);

            var options = {
                chart: {
                    title: '',
                    subtitle: ''
                },
                width: 800,
                height: 500,
                axisFontSize: 0,
                series: {
                    0: { axis: 'First component' },
                    1: { axis: 'Second component' }
                },
                axes: {
                    y: {
                        'First component': { label: 'First component' },
                        'Second component': { label: 'Second component' }
                    }
                }
            };

            var chart = new google.charts.Scatter(document.getElementById('sensore1Chart'));

            chart.draw(data, options);

        }
        $(document).ready(function () {
            $('[data-toggle="tooltip"]').tooltip();

            if (top.location.href != self.location.href)
                top.location.href = self.location.href;
        });




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

                    <div class="infoStructure">
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
                <div class="col-sm-12" style="padding: 0px 5px; overflow: hidden; display: none">
                    <div class="diagramContainer graphic col-xs-12">
                        <div style="overflow: hidden; margin: 0px 5px 4px 5px;">
                            <div style="float: left">
                                <asp:Label ID="Sensore1" runat="server" Text="Anomaly detection"></asp:Label>
                            </div>
                            <div style="float: right">
                                <div style="float: left">
                                    <asp:LinkButton ID="LinkButton3" runat="server" CssClass=" btn btnUtility">
                                    <span aria-hidden="true" class="glyphicon glyphicon-cog"></span>
                                    </asp:LinkButton>
                                </div>
                            </div>
                        </div>
                        <div>
                        </div>

                        <div id="sensore1Chart" class="graphicChart"></div>
                    </div>
                </div>
                <div class="col-sm-12" style="padding: 0px 5px; overflow: hidden">
                    <div class="diagramContainer graphic col-xs-12" style="padding: 10px; margin-top: 5px;">
                        <div class="diagramHeader">
                            <h2>Monitoring system layout</h2>
                        </div>
                        <div style="overflow: hidden; margin-top: 10px;">
                            <div style="width: 50%; float: left;">
                                <asp:LinkButton ID="LinkButton10" runat="server" CssClass="thumbnail" Style="max-height: 600px;">
                                    <asp:Image ID="Image1" runat="server" ImageUrl="~/img/mvp/structure/schema_struttura.png" Style="width: 100%;" />
                                    <span class="glyphicon glyphicon-pencil"></span>
                                </asp:LinkButton>
                            </div>
                            <div style="width: 50%; float: left; padding-left: 20px;">
                                <asp:LinkButton ID="LinkButton11" runat="server" Text="All sensors" PostBackUrl="SensorsList.aspx">
                                <span>All sensors</span>
                                    <span aria-hidden="true" class="glyphicon glyphicon-chevron-right"></span>
                                </asp:LinkButton>
                                <ul>
                                    <li>
                                        <asp:LinkButton ID="LinkButton12" runat="server" Text="Temperature">
                                        </asp:LinkButton>
                                    </li>
                                    <li>
                                        <asp:LinkButton ID="LinkButton13" runat="server" Text="Humidity">
                                        </asp:LinkButton>
                                    </li>
                                    <li>
                                        <asp:LinkButton ID="LinkButton14" runat="server" Text="Strain gauges 1">
                                        </asp:LinkButton>
                                    </li>
                                    <li>
                                        <asp:LinkButton ID="LinkButton15" runat="server" Text="Strain gauges 2">
                                        </asp:LinkButton>
                                    </li>
                                    <li>
                                        <asp:LinkButton ID="LinkButton16" runat="server" Text="Strain gauges 3">
                                        </asp:LinkButton>
                                    </li>
                                </ul>
                            </div>
                        </div>

                    </div>
                </div>
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
