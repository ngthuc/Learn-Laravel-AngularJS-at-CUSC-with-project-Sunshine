<!DOCTYPE html>
<html lang="en" ng-app="appSunshine">

<head>

    <meta charset="utf-8">
    <meta name="robots" content="all,follow">
    <meta name="googlebot" content="index,follow,snippet,archive">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Obaju e-commerce template">
    <meta name="author" content="Ondrej Svestka | ondrejsvestka.cz">
    <meta name="keywords" content="">

    <title>
        @yield('title')
    </title>

    <meta name="keywords" content="">

    <link href='http://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100' rel='stylesheet' type='text/css'>

    <!-- styles -->
    <link href="{{ asset('theme/obaju/css/font-awesome.css') }}" rel="stylesheet">
    <link href="{{ asset('theme/obaju/css/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('theme/obaju/css/animate.min.css') }}" rel="stylesheet">
    <link href="{{ asset('theme/obaju/css/owl.carousel.css') }}" rel="stylesheet">
    <link href="{{ asset('theme/obaju/css/owl.theme.css') }}" rel="stylesheet">

    <!-- theme stylesheet -->
    <link href="{{ asset('theme/obaju/css/style.default.css') }}" rel="stylesheet" id="theme-stylesheet">

    <!-- your stylesheet with modifications -->
    <link href="{{ asset('theme/obaju/css/custom.css') }}" rel="stylesheet">

    <script src="{{ asset('theme/obaju/js/respond.min.js') }}"></script>

    <link rel="shortcut icon" href="favicon.png">

    @yield('styles')

</head>

<body ng-controller="mainController">

    <!-- *** TOPBAR ***
 _________________________________________________________ -->
    @include('frontend.includes.top-bar')

    <!-- *** TOP BAR END *** -->

    <!-- *** NAVBAR ***
 _________________________________________________________ -->

    @include('frontend.includes.navbar')
    <!-- /#navbar -->

    <!-- *** NAVBAR END *** -->



    <div id="all">

        @yield('content')
        <!-- /#content -->

        <!-- *** FOOTER ***
 _________________________________________________________ -->
        @include('frontend.includes.footer')
        <!-- /#footer -->

        <!-- *** FOOTER END *** -->




        <!-- *** COPYRIGHT ***
 _________________________________________________________ -->
        @include('frontend.includes.copyright')
        <!-- *** COPYRIGHT END *** -->



    </div>
    <!-- /#all -->


    

    <!-- *** SCRIPTS TO INCLUDE ***
 _________________________________________________________ -->
    <script src="{{ asset('theme/obaju/js/jquery-1.11.0.min.js') }}"></script>
    <script src="{{ asset('theme/obaju/js/bootstrap.min.js') }}"></script>
    <script src="{{ asset('theme/obaju/js/jquery.cookie.js') }}"></script>
    <script src="{{ asset('theme/obaju/js/waypoints.min.js') }}"></script>
    <script src="{{ asset('theme/obaju/js/modernizr.js') }}"></script>
    <script src="{{ asset('theme/obaju/js/bootstrap-hover-dropdown.js') }}"></script>
    <script src="{{ asset('theme/obaju/js/owl.carousel.min.js') }}"></script>
    <script src="{{ asset('theme/obaju/js/front.js') }}"></script>

    <!-- Su dung AngularJS -->
    <script src="{{ asset('vendor/angularjs/angular.min.js') }}"></script>
    <script src="{{ asset('vendor/ngCart/dist/ngCart.js') }}"></script>

    <script>
    var myApp = angular.module('appSunshine',['ngCart']);
    </script>

    @yield('scripts')
</body>

</html>