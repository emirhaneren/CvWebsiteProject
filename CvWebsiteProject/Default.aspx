<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CvWebsiteProject.Default" %>

<!DOCTYPE html>
<html lang="tr">
<head>
    <title>Cv Web Project ~ Emirhan EREN</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8" />
    <meta name="keywords" content="Conjoint Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- Custom Theme files -->
    <link href="/web/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
    <link href="/web/css/style.css" type="text/css" rel="stylesheet" media="all">
    <!-- font-awesome icons -->
    <link href="/web/css/fontawesome-all.min.css" rel="stylesheet">
    <!-- //Custom Theme files -->
    <!-- online-fonts -->
    <link href="//fonts.googleapis.com/css?family=Lato:100,300,400,700,900" rel="stylesheet">
    <!-- //online-fonts -->
</head>
<body>
    <div class="sidenav text-center">
        <div class="side_top">
            <img src="/web/images/about.jpg" alt="news image" class="img-fluid navimg">
            <h1 class="top_hd mt-2"><a href="index.html">Conjoint</a></h1>
            <p class="top_hdp mt-2">Fermentum lobortis non tristique ante proin sociis</p>
        </div>
        <!-- header -->
        <header>
            <div class="nav-top">
                <nav class="mnu mx-auto">
                    <label for="drop" class="toggle">Menu</label>
                    <input type="checkbox" id="drop">
                    <ul class="menu">
                        <li class="active"><a href="#home" class="scroll">Ana Sayfa</a></li>
                        <li class="mt-sm-3"><a href="#about" class="scroll">Eğitim Hayatı</a></li>
                        <li class="mt-sm-3"><a href="#services" class="scroll">Yetnekler</a></li>
                        <li class="mt-sm-3"><a href="#news" class="scroll">Deneyimler</a></li>
                        <li class="mt-sm-3"><a href="#contact" class="scroll">İletişim</a></li>
                    </ul>
                </nav>
            </div>
        </header>
        <!-- //header -->
    </div>
    <div class="main">
        <div class="banner-text-w3ls" id="home">
            <div class="container">
                <div class="mx-auto text-center">
                    <!--Repeater kullanarak DB verilerini çekme -->
                    <h3>
                        <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                <%# Eval("Bilgiler") %>
                            </ItemTemplate>
                        </asp:Repeater>
                    </h3>
                    <!--Repeater kullanarak DB verilerini çekme -->
                    <!--Unvan -->
                    <p class="banp mx-auto mt-3">Yazılım Mühendisi</p>
                    <!--Unvan -->
                    <a class="btn btn-primary mt-lg-5 mt-3 agile-link-bnr" href="#about" role="button">Hakkımda</a>
                </div>
            </div>
        </div>
        <!-- about -->
        <section class="slide-wrapper" id="about">
            <h2 class="w3_head mb-4">Eğitim Hayatı </h2>
            <p class="iner mt-md-5">
                <!--Repeater kullanarak DB verilerini çekme -->
                <asp:Repeater ID="Repeater2" runat="server">
                    <ItemTemplate>
                        <%# Eval("Egitim") %>
                    </ItemTemplate>
                </asp:Repeater>
                <!--Repeater kullanarak DB verilerini çekme -->
            </p>
        </section>
        <!-- //about -->
        <!-- Yetenekler -->
        <section class="services" id="services">
            <div class="container">
                <h3 class="w3_head mb-4 text-left">Yetenekler </h3>
                <ul class="list-unstyled mt-5">
                    <li>
                        <!--Repeater kullanarak DB verilerini çekme -->
                        <asp:Repeater ID="Repeater4" runat="server">
                            <ItemTemplate>
                                <div class="row">
                                    <div class="col-2 ic-lft">
                                        <span class="fa fa-code"></span>
                                    </div>
                                    <div class="col-10">
                                        <h6><%# Eval("Yetenek") %></h6>
                                        <br />
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                        <!--Repeater kullanarak DB verilerini çekme -->
                    </li>
                </ul>
            </div>
        </section>
        <!-- //Yetenekler -->
        <!-- Deneyimler -->
        <div class="news" id="news">
            <h3 class="w3_head mb-4 text-left">Deneyimler</h3>
            <p class="iner mt-md-5 text-left">
                <!-- Repeater kullanarak DB verilerini çekme -->
                <asp:Repeater ID="Repeater3" runat="server">
                    <ItemTemplate>
                        <%# Eval("Deneyimler") %>
                    </ItemTemplate>
                </asp:Repeater>
            </p>
            <!--Repeater kullanarak DB verilerini çekme -- >
            <!-- contact -->
            <section class="wedo" id="contact">
                <h3 class="w3_head mb-4 text-left">Contact Me</h3>
                <p class="iner mt-md-5 text-left">Nunc fermentum adipiscing tempor cursus nascetur adipiscing adipiscing. Primis aliquam mus lacinia lobortis.Nunc fermentum adipiscing tempor cursus nascetur adipiscing adipiscing. </p>
                <div class="contact_grid_right mt-5 mx-auto text-left">
                    <form action="#" method="post">
                        <div class="row contact_top">
                            <div class="col-sm-6">
                                <input type="text" name="Name" placeholder="Name" required="">
                            </div>
                            <div class="col-sm-6">
                                <input type="email" name="Email" placeholder="Email" required="">
                            </div>
                        </div>
                        <input type="text" name="Name" placeholder="Name" required="">
                        <textarea name="Message" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message...';}" required="">Message...</textarea>
                        <button type="submit" class="btn">Send Message</button>
                        <button type="reset" class="btn">Reset</button>
                        <div class="clearfix"></div>
                    </form>
                </div>
                <div class="cpy-right text-center">
                    <p>
                        © 2018 Conjoint. All rights reserved | Design by
					<a href="http://w3layouts.com">W3layouts.</a>
                    </p>
                </div>
            </section>
            <!-- //contact -->
        </div>
</body>
</html>
