<%@ page import="java.util.*, Model.User" %>
<%@ include file="left-sidebar.jsp" %>
<%
    List<User> users = (List<User>) request.getAttribute("users");
    String context = request.getContextPath();
%>

<div class="container mt-4">
    <h4>? Manage Accounts</h4>

    <h5 class="mt-4">??? Customers</h5>
    <table class="table table-bordered">
        <thead class="table-light">
            <tr><th>ID</th><th>Name</th><th>Email</th><th>Phone</th><th>Status</th><th>Action</th></tr>
        </thead>
        <tbody>
            <% for (User u : users) {
                if (u.getRoleID() == 3) { %>
            <tr>
                <td><%= u.getUserID() %></td>
                <td><%= u.getFullName() %></td>
                <td><%= u.getEmail() %></td>
                <td><%= u.getPhone() %></td>
                <td><%= u.getStatus() == 1 ? "Active" : "Banned" %></td>
                <td>
                    <% if (u.getStatus() == 1) { %>
                    <a href="<%= context %>/User?action=ban&id=<%= u.getUserID() %>" class="btn btn-danger btn-sm">Ban</a>
                    <% } else { %>
                    <a href="<%= context %>/User?action=unban&id=<%= u.getUserID() %>" class="btn btn-success btn-sm">Unban</a>
                    <% } %>
                </td>
            </tr>
            <% } } %>
        </tbody>
    </table>

    <h5 class="mt-5">??? Managers</h5>
    <table class="table table-bordered">
        <thead class="table-light">
            <tr><th>ID</th><th>Name</th><th>Email</th><th>Phone</th><th>Status</th><th>Action</th></tr>
        </thead>
        <tbody>
            <% for (User u : users) {
                if (u.getRoleID() == 2) { %>
            <tr>
                <td><%= u.getUserID() %></td>
                <td><%= u.getFullName() %></td>
                <td><%= u.getEmail() %></td>
                <td><%= u.getPhone() %></td>
                <td><%= u.getStatus() == 1 ? "Active" : "Banned" %></td>
                <td>
                    <% if (u.getStatus() == 1) { %>
                    <a href="<%= context %>/User?action=ban&id=<%= u.getUserID() %>" class="btn btn-danger btn-sm">Ban</a>
                    <% } else { %>
                    <a href="<%= context %>/User?action=unban&id=<%= u.getUserID() %>" class="btn btn-success btn-sm">Unban</a>
                    <% } %>
                </td>
            </tr>
            <% } } %>
        </tbody>
    </table>
</div>
