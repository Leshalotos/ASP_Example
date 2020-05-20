<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Summary.aspx.cs"
    Inherits="NY.Summary" %>
<%@ Import Namespace="NY" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link rel="stylesheet" href="StyleSheet.css" />
</head>
<body>
    <h2>Приглашения</h2>

    <h3>Люди которые были приглашены: </h3>
    <table>
                <thead>
            <tr>
                <th>Имя</th>
                <th>Email</th>
                <th>Телефон</th>
            </tr>
        </thead>
        <tbody>
            <% var yesData = ResponseRepository.GetRepository().GetAllResponses()
                    .Where(r => r.WillAttend.Value);
                foreach (var rsvp in yesData) {
                    string htmlString = String.Format("<tr><td>{0}</td><td>{1}</td><td>{2}</td>",
                        rsvp.Name, rsvp.Email, rsvp.Phone);
                    Response.Write(htmlString);
                } %>
        </tbody>
 

    </table>

    <h3>Люди которые не придут: </h3>
    <table>
        <thead>
            <tr>
                <th>Имя</th>
                <th>Email</th>
                <th>Телефон</th>
            </tr>
        </thead>
        <tbody>
            <%= GetNoShowHtml()%>
        </tbody>
    </table>
     <p><a href="Default.aspx">Главная:</a></p>
</body>
</html>
