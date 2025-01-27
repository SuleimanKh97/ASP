<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="showMeetingRoom.aspx.cs" Inherits="day7.showMeetingRoom" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .table {
            width: 100%;
            margin-bottom: 1rem;
            color: #212529;
            border: dashed 1px #dee2e6;
            border-collapse: collapse;
            
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Meetings Rooms</h2>
            <button type="button" class="btn btn-primary">Resrev Meeting Room</button>
            <br />
            <br />
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">Room Number</th>
                        <th scope="col">Room Name</th>
                        <th scope="col">Room Capacity</th>
                        <th scope="col">Room Location</th>
                        <th scope="col">Room Price</th>
                        <th scope="col">Room Status</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row">1</th>
                        <td>Room 1</td>
                        <td>10</td>
                        <td>First Floor</td>
                        <td>100</td>
                        <td>Available</td>
                    </tr>
                    <tr>
                        <th scope="row">2</th>
                        <td>Room 2</td>
                        <td>20</td>
                        <td>Second Floor</td>
                        <td>200</td>
                        <td>Available</td>
                    </tr>
                    <tr>
                        <th scope="row">3</th>
                        <td>Room 3</td>
                        <td>30</td>
                        <td>Third Floor</td>
                        <td>300</td>
                        <td>Available</td>
                    </tr>
                </tbody>
        </div>
    </form>
</body>
</html>
