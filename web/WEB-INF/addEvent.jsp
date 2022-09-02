<%--
  Created by IntelliJ IDEA.
  User: Dev
  Date: 01.09.2022
  Time: 21:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Event</title>
</head>
<body>
Input event's data
<form action="/events/add" method="post">
    <input type="text" name="name" placeholder="Input name"><br>
    <input type="text" name="place" placeholder="Input place"><br>
    Is it online now?<br>
    Yes<input type="radio" name="isOnline" value="TRUE">
    No<input type="radio" name="isOnline" value="FALSE"><br>
    <input type="number" name="price" placeholder="Input Price">
    Event Type
    <select name="eventType">
        <option value="PRESENTATION">PRESENTATION</option>
        <option value="PARTY">PARTY</option>
    </select>
    <input type="submit" value="Add">


</form>
</body>
</html>
