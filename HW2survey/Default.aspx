<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HW2survey.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous"/>
    <link href="form-validation.css" rel="stylesheet"/>
    <title>SurveyOnYourFirstJob</title>
</head>
<body class="bg-light">
    <form id="form1" runat="server">
         <div class="container col-12">
            <div class="py-5 text-center">

            <img class="d-block mx-auto mb-4" src="doge.gif" alt="" width="150" height="150">
            <h1>Анкета</h1>
            <p class="lead">Ваша первая работа возможно самый главный шаг в вашей жизни. Наша команда обеспечит всё, чтобы для вас каждый день, проведённый с нами был наполнен прекрасной атмосферой, интересными задачами и запахом весны. </p>
            <p class="lead">Мы рады приветсвовать вас в Lead Corporation!</p>

            </div>
        </div>
    <div class="container align-self-center justify-content-center modal-dialog-centered center">
    <div class="col-md-8 order-md-1 ">
      <h4 class="mb-3 text-center">Заполните анкету</h4>
      <form class="needs-validation" novalidate>
        <div class="row">
          <div class="col-md-6 mb-3">
            <label for="firstName">First name</label>
              <asp:TextBox ID="firstName" CssClass="form-control" runat="server" required></asp:TextBox>
            <div class="invalid-feedback">
              Valid first name is required.
            </div>
          </div>
          <div class="col-md-6 mb-3">
            <label for="lastName">Last name</label>
            <asp:TextBox ID="lastName" CssClass="form-control" runat="server" required></asp:TextBox>
            <div class="invalid-feedback">
              Valid last name is required.
            </div>
          </div>
        </div>

        <div class="mb-3">
          <label for="middlename">Middle name</label>
          <div class="input-group">
              <asp:TextBox ID="middlename" CssClass="form-control" runat="server" ></asp:TextBox>
            <div class="invalid-feedback" style="width: 100%;">
              Your username is required.
            </div>
          </div>
        </div>
          <div class="mb-3">
          <label for="namework">Name work</label>
          <div class="input-group">
              <asp:TextBox ID="namework" CssClass="form-control" runat="server" ></asp:TextBox>
            <div class="invalid-feedback" style="width: 100%;">
              Your username is required.
            </div>
          </div>

              <hr class="mb-4">

              <div class="mb-3">
          <label for="nominationwork">Nomination work</label>
          <div class="input-group">
              
              <asp:RadioButtonList ID="nominationwork" runat="server" >
                  <asp:ListItem Text="Учебный проект" Selected="True"></asp:ListItem>
                  <asp:ListItem Text="Воспитательный проект"></asp:ListItem>
                  <asp:ListItem Text="Школьный проект"></asp:ListItem>
                  <asp:ListItem Text="On-line образовательный ресурс"></asp:ListItem>
                  <asp:ListItem Text="Учебно-методическое обеспечение"></asp:ListItem>
              </asp:RadioButtonList>
            <div class="invalid-feedback" style="width: 100%;">
              Your username is required.
            </div>
          </div>
        </div>
          

          <div class="mb-3">
          <label for="discipline">Discipline</label>
          <div class="input-group">
              <asp:TextBox ID="discipline" CssClass="form-control" runat="server" ></asp:TextBox>
            <div class="invalid-feedback" style="width: 100%;">
              Your username is required.
            </div>
          </div>
        </div>

          <div class="row">
          <div class="col-md-6 mb-3">
            <label for="accept">Accept</label>
              <asp:TextBox ID="accept" CssClass="form-control" runat="server" placeholder="Апробирована анкета (Да, Нет)?" ></asp:TextBox>
            <div class="invalid-feedback">
              Valid first name is required.
            </div>
          </div>
          <div class="col-md-6 mb-3">
            <label for="levelaccept">Level Accept</label>
            <asp:TextBox ID="levelaccept" CssClass="form-control" runat="server" placeholder="Если да, то на каком уровне?" ></asp:TextBox>
            <div class="invalid-feedback">
              Valid last name is required.
            </div>
          </div>
        </div>

          <div class="mb-3">
          <label for="organization">Organization</label>
          <div class="input-group">
              <asp:TextBox ID="organization" CssClass="form-control" runat="server" placeholder="Полное название организации" ></asp:TextBox>
            <div class="invalid-feedback" style="width: 100%;">
              Your username is required.
            </div>
          </div>
        </div>

          <div class="mb-3">
          <label for="position">Position</label>
          <div class="input-group">
              <asp:TextBox ID="position" CssClass="form-control" runat="server" placeholder="Ваша должность" ></asp:TextBox>
            <div class="invalid-feedback" style="width: 100%;">
              Your username is required.
            </div>
          </div>
        </div>

             <div class="row">
          <div class="col-md-6 mb-3">
            <label for="city">City</label>
              <asp:TextBox ID="city" runat="server" CssClass="form-control"></asp:TextBox>
            <div class="invalid-feedback">
              Please select a valid country.
            </div>
          </div>
          <div class="col-md-6 mb-3">
            <label for="region">Region</label>
              <asp:TextBox ID="region" runat="server" CssClass="form-control"></asp:TextBox>
            <div class="invalid-feedback">
              Please provide a valid state.
            </div>
          </div>
        </div>

        <div class="mb-3">
          <label for="numberphone">Number phone</label>
          <div class="input-group">
              <asp:TextBox ID="numberphone" CssClass="form-control" runat="server" AutoCompleteType="HomePhone" placeholder="8999999999" ></asp:TextBox>
            <div class="invalid-feedback" style="width: 100%;">
              Your username is required.
            </div>
          </div>
        </div>

        <div class="mb-3">
          <label for="email">Email</label>
          <asp:TextBox ID="email" placeholder="you@example.com" CssClass="form-control" runat="server" AutoCompleteType="Email"></asp:TextBox>
          <div class="invalid-feedback">
            Please enter a valid email address for shipping updates.
          </div>
        </div>

        <hr class="mb-4">

        <h4 class="mb-3">Как вы узнали о нас?</h4>
              <br class="mb-3" />
        <div class="mb-3">
          <div class="input-group ">

              <asp:RadioButtonList ID="howlistenus" runat="server" ClientIDMode="AutoID" >
                  <asp:ListItem Text="Сайт МОН" Selected="True"></asp:ListItem>
                  <asp:ListItem Text="Сайт Майкрософт Украина"></asp:ListItem>
                  <asp:ListItem Text="Сайт сети «Партнерство в обучении»"></asp:ListItem>
                  <asp:ListItem Text="Областное управление образованием"></asp:ListItem>
                  <asp:ListItem Text="Городское управление образованием"></asp:ListItem>
                  <asp:ListItem Text="Gurt.org.ua"></asp:ListItem>
                  <asp:ListItem Text="Osvita.com"></asp:ListItem>
              </asp:RadioButtonList>
                 </div>
            <div class="invalid-feedback " style="width: 100%;">
              Your username is required.
            </div>
        </div>

        <div class="mb-3">
          <label for="howlistenusyourself">Напишите свой вариант</label>
          <asp:TextBox ID="howlistenusyourself" CssClass="" runat="server" Rows="2" MaxLength="200"></asp:TextBox>
          <div class="invalid-feedback">
            Please enter a valid email address for shipping updates.
          </div>
        </div>

        </div>
          <hr class="mb-4">
        <div>
          <asp:CheckBox ID="check" runat ="server"  ViewStateMode="Enabled"/>
          <label for="check">Я согласен с правилами организации <a href="#">Лицензионное соглашение</a></label>
        </div>

        <hr class="mb-5 ">
          <asp:Button ID="Button1" type="submit" CssClass="btn btn-primary btn-lg btn-block" runat="server" Text="Отправить анкету" OnClick="Button1_Click" Enabled="True" ClientIDMode="Static"  />
          <br />
          <div class="text-center">
          <asp:Label ID="ErrorOutput" CssClass="text-center" runat="server" Text=""></asp:Label>
          </div>
          <div class="text-center">
          <asp:Label ID="ErrorOutput2" CssClass="text-center" runat="server" Text=""></asp:Label>
          </div>
      </form>
    </div>
  </div>

  <footer class="my-5 pt-5 text-muted text-center text-small">
    <p class="mb-1">&copy; 2020 Lead Corporation</p>
  </footer>
  </div>
</div>
    </form>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>
</html>
