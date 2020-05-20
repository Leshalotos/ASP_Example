<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" 
    Inherits="NY.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="StyleSheet.css" />
</head>
<body>
    <form id="rsvpform" runat="server">
        <div>
            <h1>Новый Год 2020!</h1>
            <p>Вас приглашают на новогоднюю вечеринку!</p>
        </div>
        <asp:ValidationSummary ID="validationSummary" runat="server" ShowModelStateErrors="true" />
        <div>
            <label>Ваше имя:</label><input type="text" id="name" runat="server" /></div>
        <div>
            <label>Ваш email:</label><input type="text" id="email" runat="server" /></div>
        <div>
            <label>Ваш телефон:</label><input type="text" id="phone" runat="server" /></div>
        <div>
            <label>Вы придете?</label>
            <select id="willattend" runat="server">
            <option value="">Выберите один из вариантов</option>
            <option value="true">Да</option>
    <option value="false">Нет</option>
    </select>
        </div>
        <div>
            <button type="submit">Получить приглашение:</button>
            <p><a href="Summary.aspx">Посмотреть кто придет:</a></p>
        </div>
    </form>
</body>
</html>

