<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Test.aspx.cs" Inherits="Test" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">    

<div class="footer">
    <div class="footer-upper">
        <div class="footer-block information">
            <div class="title">
                <strong>Information</strong>
            </div>
            <ul class="list">
                    <li><a href="/sitemap">Sitemap</a></li>
                                    <li><a href="/shipping-returns">Shipping &amp; returns</a></li>
                    <li><a href="/privacy-notice">Privacy notice</a></li>
                    <li><a href="/conditions-of-use">Conditions of Use</a></li>
                    <li><a href="/about-us">About us</a></li>
                <li><a href="/contactus">Contact us</a></li>
            </ul>
        </div>
        <div class="footer-block customer-service">
            <div class="title">
                <strong>Customer service</strong>
            </div>
            <ul class="list">
                <li><a href="/search">Search</a> </li>
                    <li><a href="/news">News</a></li>
                                    <li><a href="/blog">Blog</a></li>
                                                    <li><a href="/recentlyviewedproducts">Recently viewed products</a></li>
                                    <li><a href="/compareproducts">Compare products list</a></li>
                                    <li><a href="/newproducts">New products</a></li>
                            </ul>
        </div>
        <div class="footer-block my-account">
            <div class="title">
                <strong>My account</strong>
            </div>
            <ul class="list">
                <li><a href="/customer/info">My account</a></li>
                <li><a href="/order/history">Orders</a></li>
                <li><a href="/customer/addresses">Addresses</a></li>
                    <li><a href="/cart">Shopping cart</a></li>
                                    <li><a href="/wishlist">Wishlist</a></li>
                                    <li><a href="/vendor/apply">Apply for vendor account</a></li>
                            </ul>
        </div>
        <div class="footer-block follow-us">
            <div class="social">
                <div class="title">
                    <strong>Follow us</strong>
                </div>
                <ul class="networks">
		<li class="facebook"><a href="http://www.facebook.com/nopCommerce" target="_blank">Facebook</a></li>
			<li class="twitter"><a href="https://twitter.com/nopCommerce" target="_blank">Twitter</a></li>
			<li class="rss"><a href="/news/rss/1">RSS</a></li>
			<li class="youtube"><a href="http://www.youtube.com/user/nopCommerce" target="_blank">YouTube</a></li>
			<li class="google-plus"><a href="https://plus.google.com/+nopcommerce" target="_blank">Google+</a></li>
</ul>
            </div>
            <div class="newsletter">
    <div class="title">
        <strong>Newsletter</strong>
    </div>
    <div class="newsletter-subscribe" id="newsletter-subscribe-block">
        <div class="newsletter-email">
            <input class="newsletter-subscribe-text" id="newsletter-email" name="NewsletterEmail" placeholder="Enter your email here..." type="text" value="">
            <input type="button" value="Subscribe" id="newsletter-subscribe-button" class="button-1 newsletter-subscribe-button">
        </div>
        <div class="newsletter-validation">
            <span id="subscribe-loading-progress" style="display: none;" class="please-wait">Wait...</span>
            <span class="field-validation-valid" data-valmsg-for="NewsletterEmail" data-valmsg-replace="true"></span>
        </div>
    </div>
    <div class="newsletter-result" id="newsletter-result-block"></div>
    <script type="text/javascript">
        function newsletter_subscribe(subscribe) {
            var subscribeProgress = $("#subscribe-loading-progress");
            subscribeProgress.show();
            var postData = {
                subscribe: subscribe,
                email: $("#newsletter-email").val()
            };
            $.ajax({
                cache: false,
                type: "POST",
                url: "/subscribenewsletter",
                data: postData,
                success: function(data) {
                    subscribeProgress.hide();
                    $("#newsletter-result-block").html(data.Result);
                    if (data.Success) {
                        $('#newsletter-subscribe-block').hide();
                        $('#newsletter-result-block').show();
                    } else {
                        $('#newsletter-result-block').fadeIn("slow").delay(2000).fadeOut("slow");
                    }
                },
                error: function(xhr, ajaxOptions, thrownError) {
                    alert('Failed to subscribe.');
                    subscribeProgress.hide();
                }
            });
        }

        $(document).ready(function () {
            $('#newsletter-subscribe-button').click(function () {
                    newsletter_subscribe('true');
            });
            $("#newsletter-email").keydown(function (event) {
                if (event.keyCode == 13) {
                    $("#newsletter-subscribe-button").click();
                    return false;
                }
            });
        });
    </script>
</div>

        </div>
    </div>
    <div class="footer-lower">
        <div class="footer-info">
            <span class="footer-disclaimer">Copyright © 2017 nopCommerce demo store. All rights reserved.</span>
        </div>
            <div class="footer-powered-by">
                
                Powered by <a href="http://www.nopcommerce.com/">nopCommerce</a>
            </div>
        
    </div>
    
</div>

    <style>
        .footer {
    background-color: #eee;
    text-align: center;
}
qvp0bihqbaehbxq…iS5cw2r2lyk1:1
*, *:before, *:after {
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}
qvp0bihqbaehbxq…iS5cw2r2lyk1:1
* {
    margin: 0;
    outline: none;
    padding: 0;
    text-decoration: none;
}
user agent stylesheet
div {
    display: block;
}
Inherited from body
qvp0bihqbaehbxq…iS5cw2r2lyk1:1
body {
    max-width: 100%;
    overflow-x: hidden;
    background-color: #fff;
    font: normal 14px Arial,Helvetica,sans-serif;
    color: #777;
}
Inherited from html.html-home-page
qvp0bihqbaehbxq…iS5cw2r2lyk1:1
html {
    margin: 0;
    -webkit-text-size-adjust: none;
}
Pseudo ::before element
qvp0bihqbaehbxq…iS5cw2r2lyk1:1
*, *:before, *:after {
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}
Pseudo ::after element
qvp0bihqbaehbxq…iS5cw2r2lyk1:1
*, *:before, *:after {
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}
    </style>

</asp:Content>

