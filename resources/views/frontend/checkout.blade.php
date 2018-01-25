@extends('frontend.layouts.app')

@section('title')
Trang kiểm tra Giỏ hàng
@endsection

@section('content')

<div id="content">
            <div class="container">

                <div class="col-md-12">
                    <ul class="breadcrumb">
                        <li><a href="#">Home</a>
                        </li>
                        <li>Checkout - Order review</li>
                    </ul>
                </div>

                <ngcart-cart template-url="{{ asset('vendor/ngCart/template/ngCart/cart.html') }}"></ngcart-cart>

                <!-- /.col-md-3 -->

            </div>
            <!-- /.container -->
        </div>

@endsection

@section('scripts')
<script>
	myApp.controller ('mainController', ['$scope', '$http', 'ngCart', function($scope, $http, ngCart) {
	    //ngCart.setTaxRate(7.5);
	    //ngCart.setShipping(2.99);

      $scope.submitCart = function() {
        alert('bang hams');
        $http({
            method: 'POST',
            url: '/checkoutJson',
            headers: {'Content-Type': 'application/json'},
            data: ngCart.toObject()
        })
        .then(function(response) {
            alert('thanh cong');
            console.log('Du lieu lay duoc ve ne');
            console.log(response.data);
        }, function(error) {
            alert('that bai');
            console.log(error);
        });
      }
	}]);
</script>
@endsection
