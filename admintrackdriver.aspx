<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="admintrackdriver.aspx.cs" Inherits="admintrackdriver" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="mapContainer">
<div>SHOW ONLINE DRIVERS
    <asp:DropDownList ID="DropDownList1" runat="server">
    </asp:DropDownList></div>
                <div id="mapCanvas"></div>
                
<%--</div>--%>
<%--<div id="lab">--%>
<div >
<asp:Label ID="Label1" runat="server" Text="Label">Comment</asp:Label>
<asp:Label ID="Label2" runat="server" Text="Label">Fuel</asp:Label>
    <asp:Label ID="Label3" runat="server" Text="Label">Rupees</asp:Label><br /></div>
    </div>
<div id="commen">
    
</div>



     <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAG_XxJt7OYEkXFTo9MmxC-ec73At7pwhs"></script>
<script>
    var position = [19.1877677, 72.9761308];
    var selectedtracker = 40;
    function initialize() {
        var latlng = new google.maps.LatLng(position[0], position[1]);
        var myOptions = {
            zoom: 16,
            center: latlng,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        map = new google.maps.Map(document.getElementById("mapCanvas"), myOptions);

        marker = new google.maps.Marker({
            position: latlng,
            map: map,
            title: "Latitude:" + position[0] + " | Longitude:" + position[1]
        });

        google.maps.event.addListener(map, 'click', function (event) {
            var result = [event.latLng.lat(), event.latLng.lng()];
            console.log(event.latLng.lat() + ":" + event.latLng.lng() + ":" + result)
            transition(result);
        });
    }

    //Load google map
    google.maps.event.addDomListener(window, 'load', initialize);


    var numDeltas = 100;
    var delay = 10; //milliseconds
    var i = 0;
    var deltaLat;
    var deltaLng;

    function transition(result) {
        i = 0;
        deltaLat = (result[0] - position[0]) / numDeltas;
        deltaLng = (result[1] - position[1]) / numDeltas;
        moveMarker();
    }

    function moveMarker() {
        position[0] += deltaLat;
        position[1] += deltaLng;
        var latlng = new google.maps.LatLng(position[0], position[1]);
        marker.setTitle("Latitude:" + position[0] + " | Longitude:" + position[1]);
        marker.setPosition(latlng);
        map.setCenter(latlng); //centering marker
        if (i != numDeltas) {
            i++;
            setTimeout(moveMarker, delay);
        }
    }
    function getuserloc() {
        if ($('#<%=DropDownList1.ClientID%>').val() === null) {
            console.log("null");
            $("#mapCanvas").hide();
            $("#commen").hide();
        }
        else {
            console.log("niot null");
            $("#mapCanvas").show();
            $("#commen").show();
            console.log('https://www.sumit.tecpanda.in/adminuserposition.php?trackid=' + selectedtracker);
            $.ajax({
                url: 'https://www.sumit.tecpanda.in/adminuserposition.php?trackid=' + selectedtracker,
                headers: { 'Access-Control-Allow-Origin': '*' },
                success: function (data) {
                    var x = data.split('|');
                    console.log("asdasd   " + x[0] + " : " + x[1]);
                    transition([x[1], x[0]]);
                }
            });
            getcomments();
        }
    }


    function getOnlineUsers() {
        //$('#DropDownList1.ClientID').empty();
        $.ajax({
            url: 'https://www.sumit.tecpanda.in/showonlinedrivers.php',
            headers: { 'Access-Control-Allow-Origin': '*' },
            success: function (data) {
                console.log(data);
                var d = eval(data);
                // append
                $.each(d, function (i, option) {
                    var avl = false;
                    $("#<%=DropDownList1.ClientID%>").each(function () {
                        if ($(this).val() === option.login_track_id) {
                            avl = true;
                            return false;
                        }
                    });
                    if (avl == false) {
                        $('#<%= DropDownList1.ClientID%>').append($('<option/>').attr("value", option.login_track_id).text(option.username + " # " + option.userid + " # " + option.logindt));
                    }
                });
                //remove
                $("#<%=DropDownList1.ClientID%> option").each(function () {
                    var igot = false;
                    var op = $(this).val();
                    $.each(d, function (i, option) {
                        console.log("-->" + op);
                        if (op === option.login_track_id) {
                            avl = true;
                            return false;
                        }
                    });
                    if (igot == false) {
                        $("#<%=DropDownList1.ClientID%> option[value='" + op + "']").remove();
                    }
                });
                $.each(d, function (i, option) {
                    var avl = false;
                    $("#<%= DropDownList1.ClientID%> option").each(function () {
                        if ($(this).val() === option.login_track_id) {
                            avl = true;
                            return false;
                        }
                    });
                    if (avl == false) {
                        $('#<%= DropDownList1.ClientID%>').append($('<option/>').attr("value", option.login_track_id).text(option.username + " # " + option.userid + " # " + option.logindt));
                    }
                });
                getuserloc();
            }
        });
    }

    //get value of dropdown on select
    $("#<%= DropDownList1.ClientID%>").change(function () {
        console.log($("#<%= DropDownList1.ClientID%>").val() + "---000000");
        selectedtracker = $("#<%= DropDownList1.ClientID%>").val();
    });
    $("#<%= DropDownList1.ClientID%>").click(function () {
        console.log($("#<%= DropDownList1.ClientID%>").val() + "---000000");
        selectedtracker = $("#<%= DropDownList1.ClientID%>").val();
    });

    function getcomments() {
        console.log("asdasda+++++++++++++");
        $.ajax({
            url: 'https://www.sumit.tecpanda.in/showcommentdriver.php?trackid=' + selectedtracker,
            headers: { 'Access-Control-Allow-Origin': '*' },
            success: function (data) {
                console.log(data);
                var d = eval(data);
                $("#commen").html("");
                $.each(d, function (i, option) {
                    $("#commen").html($("#commen").html() + option.comment + "      " + option.fuel + "      " + option.cost + "<hr><br>");
                });
            }

        });
    }

    getOnlineUsers();
    //getuserloc();
    setInterval(getOnlineUsers, 5000);
    //setInterval(getuserloc, 5000);
</script>
</asp:Content>



