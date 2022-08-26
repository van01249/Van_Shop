<div id="list-cart">
	@extends('master')
@section('content')
<div class="inner-header">
		<div class="container">
			<div class="pull-left">
				<h6 class="inner-title">Đặt hàng</h6>
			</div>
			<div class="pull-right">
				<div class="beta-breadcrumb">
					<a href="./">Trang chủ</a> / <span>Đặt hàng</span>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
</div>

<div class="container" >
	<div id="content">
		
		@if(\Session::has('error'))
        <div class="alert alert-danger">{{ \Session::get('error') }}</div>
			{{ \Session::forget('error') }}
		@endif
		@if(\Session::has('success'))
			<div class="alert alert-success">{{ \Session::get('success') }}</div>
			{{ \Session::forget('success') }}
		@endif

		<form action="{{route('dathang')}}" method="post" class="beta-form-checkout">
			<input type="hidden" name="_token" value="{{csrf_token()}}">
			<div class="row">
			<div class="alert alert-success">
			@if(Session::has('thongbao')){{Session::get('thongbao')}}@endif
			</div>
			</div>
			<div class="row">
				<div class="col-sm-6" >
					<h4>Đặt hàng</h4>
					<div class="space20">&nbsp;</div>
					
					<div class="form-block">
						<input type="hidden" 
						@if(Auth::check())
							value="{{Auth::user()->id}}" name="customer_id"
						@endif
							value="0" name="customer_id">
						<label for="name">Họ tên*</label>
						<input type="text"
						@if(Auth::check())
							value="{{Auth::user()->full_name}}"
						@endif
						name="name" placeholder="Họ tên" required>
					</div>
					<div class="form-block">
						<label>Giới tính </label>
						<input id="gender" type="radio" class="input-radio" name="gender" value="nam" checked="checked" style="width: 10%"><span style="margin-right: 10%">Nam</span>
						<input id="gender" type="radio" class="input-radio" name="gender" value="nữ" style="width: 10%"><span>Nữ</span>
									
					</div>

					<div class="form-block">
						<label for="email">Email*</label>
						<input type="email" id="email" 
						@if(Auth::check())
							value="{{Auth::user()->email}}"
						@endif
						name="email" required placeholder="expample@gmail.com">
					</div>
					<div class="form-block">
						<label for="adress">Địa chỉ*</label>
						<input type="text" id="address"
						@if(Auth::check())
							value="{{Auth::user()->address}}"
						@endif
						name="address" placeholder="Nhập số nhà" required>

					</div>
					

					<div class="form-block">
						<label for="phone">Điện thoại*</label>
						<input type="text"
						@if(Auth::check())
							value="{{Auth::user()->phone}}"
						@endif
						id="phone" name="phone" required>
					</div>
					
					<div class="form-block">
						<label for="notes">Ghi chú</label>
						<textarea id="notes" value="Trống" name="notes">Trống</textarea>
					</div>
				</div>
				<div class="col-sm-6" >
					<div class="your-order">
						<div class="your-order-head"><h5>Đơn hàng của bạn</h5></div>
						<div class="your-order-body" style="padding: 0px 10px">
							<div class="your-order-item">
								<div >
								@if(Session::has('cart'))
								{{-- @php
									foreach ($product_cart as $key => $cart) {
										$list_paypal = array(
											'name' => $cart['item']['name'], 
											'description' => '', 
											'quantity' => $cart['qty'], 
											'price' => $cart['price'], 
											'tax' => '0',
											'sku' => '', 
											'currency' => 'USD'
										);
									}

									\Session::put('list_paypal', $list_paypal);
								@endphp --}}
								@foreach($product_cart as $cart)
								<!--  one item	 -->
									<div class="media">
										
										<img width="25%" src="upload/sanpham/{{$cart['item']['image']}}" alt="" class="pull-left">
										<div class="media-body">
											
											<p class="font-large">{{$cart['item']['name']}}</p>
											<span class="color-gray your-order-info">Đơn giá: {{number_format($cart['price'])}} đồng</span>
											<span class="color-gray your-order-info">Số lượng còn: {{number_format($cart['item']->amount)}}</span>
											<div class="wrap-num-product flex-w m-l-auto m-r-0">
												<div class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
													<i class="fs-16 zmdi zmdi-minus"></i>
												</div>

													Số lượng: <input id="quanty-item-{{$cart['item']->id}}" class="cart_qty" name="cart_qty" type="number" style="width: 50px;" min="1"
													   value="{{ $cart['qty'] }}">
													   <input type="hidden" name="product_qty" value="{{$cart['item']->amount}}">
													<a onclick="SaveListItemCart({{$cart['item']->id}});"class="btn btn-default ">Cập nhật</a>
													
													<button type="button" class="btn btn-danger btn-xs" data-toggle="modal" data-target="#myModal">Xóa</button>

													{{-- <form action="admin/donhang/xoa/{{$dh->id}}" method="GET"> --}}
									
														<div id="myModal" class="modal fade" role="dialog">
															<div class="modal-dialog">
								
																<!-- Modal content-->
																<div class="modal-content">
																<div class="modal-header">
																	<button type="button" class="close" data-dismiss="modal">&times;</button>
																	<h4 class="modal-title">Bạn có chắc chắn muốn xóa?</h4>
																</div>
																<div class="modal-footer">
																	<button type="button" class="btn btn-default" data-dismiss="modal">Thoát</button>
																	{{-- <button type="submit" class="btn btn-danger">Xóa</button> --}}
																	<a  class="btn btn-danger" type="button"  href="{{route('xoagiohang',$cart['item']['id'])}}"><b><u>Xóa</u></b></a>
																</div>
																</div>
								
															</div>
														</div>
													{{-- </form> --}}
											</div>
											
										</div>
									</div>
								<!-- end one item -->
								@endforeach
								@endif
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="your-order">
								<div class="form-group">
									<h5><b>Tính phí vận chuyển</b></h5>
								</div>
								<div class="form-group">
									<label for="">Chọn Thành Phố*</label>
									<select name="city" id="city" class=" choose city">
										<option value="">-----Chọn-----</option>
										@foreach ($city as $ci)
											<option value="{{$ci->matp}}">{{$ci->name}}</option>
										@endforeach
									</select>
								</div>
								<div class="form-group">
									<label for="">Chọn Quận/Huyện*</label>
									<select name="province" id="province" class="province choose">
										<option value="">-----Chọn-----</option>
									</select>
								</div>
								<div class="form-group">
									<label for="">Chọn Xã/Phường*</label>
									<select name="wards" id="wards" class=" wards">
										<option value="">-----Chọn-----</option>
									</select>
								</div>
								<div>
									<button type="button" name="tinh_phi" class="btn btn-info tinh_phi">Tính phí vận chuyển</button>
								</div>
							</div>
							@if (Session::get('fee'))
								<div class="your-order-item">
									<div class="pull-left"><p class="your-order-f18">Thành tiền:</p></div>
									<div class="pull-right"><h5 class="color-black">@if(Session::has('cart')){{number_format($totalPrice)}}@else 0 @endif đồng</h5></div>
									<div class="clearfix"></div>
									<div class="pull-left"><p class="your-order-f18">Phí vận chuyển:</p></div>
									<div class="pull-right">
										<h5 class="color-black"> {{number_format(Session::get('fee'))}} đồng</h5>
										<input type="hidden" name="phi_van_chuyen" value="{{Session::get('fee')}}">
									</div>
									<div class="clearfix"></div>
									<div class="pull-left"><p class="your-order-f18">Tổng tiền:</p></div>
									<div class="pull-right"><h5 class="color-black">@if(Session::has('cart')){{number_format($totalPrice + Session::get('fee'))}}@else 0 @endif đồng</h5></div>
									<div class="clearfix"></div>
									@php
											$usd = ($totalPrice + Session::get('fee'))/23000;
											$total_paypal = round($usd, 2);

											\Session::put('total_paypal', $total_paypal);
									@endphp
								</div>
							@else
								<div class="your-order-item">
									<div class="pull-left"><p class="your-order-f18">Thành tiền:</p></div>
									<div class="pull-right"><h5 class="color-black">@if(Session::has('cart')){{number_format($totalPrice)}}@else 0 @endif đồng</h5></div>
									<div class="clearfix"></div>
									<div class="pull-left"><p class="your-order-f18">Phí vận chuyển:</p></div>
									<div class="pull-right">
										<h5 class="color-black"> 10000 đồng</h5>
										<input type="hidden" name="phi_van_chuyen" value="10000">
									</div>
									<div class="clearfix"></div>
									<div class="pull-left"><p class="your-order-f18">Tổng tiền:</p></div>
									<div class="pull-right"><h5 class="color-black">@if(Session::has('cart')){{number_format($totalPrice) }}@else 0 @endif đồng</h5></div>
									<div class="clearfix"></div>
									@php
											$usd = ($totalPrice + Session::get('fee'))/23000;
											$total_paypal = round($usd, 2);
											\Session::put('total_paypal', $total_paypal);
									@endphp
								</div>
							@endif
						</div>
						
						<div class="your-order-head"><h5>Hình thức thanh toán</h5></div>
						

						<div class="your-order-body">
							<ul class="payment_methods methods">
								<li class="payment_method_bacs">
									<input id="payment_method_bacs" type="radio" class="input-radio" name="payment_method" value="COD" checked="checked" data-order_button_text="">
									<label for="payment_method_bacs">Thanh toán khi nhận hàng </label>
									<div class="payment_box payment_method_bacs" style="display: block;">
										Cửa hàng sẽ gửi hàng đến địa chỉ của bạn, bạn xem hàng rồi thanh toán tiền cho nhân viên giao hàng
									</div>						
								</li>

								<li class="payment_method_cheque">
									<input id="payment_method_cheque" type="radio" class="input-radio" name="payment_method" value="PAYPAL" data-order_button_text="">
									<label for="payment_method_cheque">Thanh toán với paypal </label>
									<div class="payment_box payment_method_cheque" style="display: none;">
										<a class="btn btn-primary m-3" href="{{ route('processTransaction') }}">Thanh toán với PayPal</a>
										{{-- <div id="paypal-button"></div>
										
										<input type="hidden" name="usd" id="usd" value="{{round($usd, 2)}}">
										<script src="https://www.paypalobjects.com/api/checkout.js"></script>
										<script>

											var usd = document.getElementById("usd").value;

											paypal.Button.render({
											  // Configure environment
											  env: 'sandbox',
											  client: {
												sandbox: 'AfbWNd7kmgTManlW_DuI-YRuxI_-RG4hZjbBo4Bj864voE2yM4QsG3sTHvgQKqKE3eQQJiS43THo7wV9',
												production: 'demo_production_client_id'
											  },
											  // Customize button (optional)
											  locale: 'en_US',
											  style: {
												size: 'large',
												color: 'gold',
												shape: 'pill',
											  },
										  
											  // Enable Pay Now checkout flow (optional)
											  commit: true,
										  
											  // Set up a payment
											  payment: function(data, actions) {
												return actions.payment.create({
												  transactions: [{
													amount: {
													  total: `${usd}`,
													  currency: 'USD'
													}
												  }]
												});
											  },
											  // Execute the payment
											  onAuthorize: function(data, actions) {
												return actions.payment.execute().then(function() {
												  // Show a confirmation message to the buyer
												  window.alert('Cảm ơn bạn đã mua hàng của chúng tôi!');
												});
											  }
											}, '#paypal-button');
										  
										  </script> --}}
									</div>						
								</li>
								
							</ul>
						</div>

						<div class="text-center"><button type="submit" class="beta-btn primary" href="#">Đặt hàng <i class="fa fa-chevron-right"></i></button></div>
					</div> <!-- .your-order -->
				</div>
			</div>
		</form>
	</div> <!-- #content -->
</div> <!-- .container -->
<!-- include js files -->
@include('footer')
</div>
<script src="source/assets/dest/js/jquery.js"></script>
<script src="source/assets/dest/vendors/jqueryui/jquery-ui-1.10.4.custom.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="source/assets/dest/vendors/bxslider/jquery.bxslider.min.js"></script>
<script src="source/assets/dest/vendors/colorbox/jquery.colorbox-min.js"></script>
<script src="source/assets/dest/vendors/animo/Animo.js"></script>
<script src="source/assets/dest/vendors/dug/dug.js"></script>
<script src="source/assets/dest/js/scripts.min.js"></script>
<script src="source/assets/dest/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
<script src="source/assets/dest/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
<script src="source/assets/dest/js/waypoints.min.js"></script>
<script src="source/assets/dest/js/wow.min.js"></script>
<!--customjs-->
<script src="source/assets/dest/js/custom2.js"></script>

<script type="text/javascript">
	

	function SaveListItemCart(id){
		cart_qty=[];
        $("input[name='cart_qty']").each(function(){
            cart_qty.push($(this).val());
        });

		product_qty=[];
        $("input[name='product_qty']").each(function(){
            product_qty.push($(this).val());
        });
		for(i=0; i<=cart_qty.length; i++){
			if(cart_qty[i]>product_qty[i]){
				alert('Số lượng phải nhỏ hơn số lượng tồn kho!');
			}
		}
		$.ajax({
			url: 'update-to-cart/'+id+'/'+$("#quanty-item-"+id).val(),
			type: 'GET',
			data:{cart_qty:cart_qty, product_qty:product_qty},
			}).done(function(reponse){
				location.reload();
		});
		
	}

</script>

<script type="text/javascript">
	$(document).ready(function(){

		$('.choose').on('change', function(){
			var action = $(this).attr('id');
			var ma_id = $(this).val();
			var _token = $('input[name="_token"]').val();
			var result = '';
			// alert(action);
			// alert(matp);
			// alert(_token);

			if(action == 'city'){
				result = 'province';
			}else{
				result = 'wards';
			}

			$.ajax({
				url: "{{url('/select-delivery')}}",
				method: "POST",
				data: {action:action, ma_id:ma_id, _token:_token},

				success:function(data){
					$('#'+result).html(data);
				}
			});
		});
	})
</script>
<script type="text/javascript">
	$(document).ready(function(){
		$('.tinh_phi').click(function(){
			// alert('OK');
			var city = $('.city').val();
            var province = $('.province').val();
            var wards = $('.wards').val();
			var _token = $('input[name="_token"]').val();
			if(city == '' && province == '' && wards == ''){
				alert('Chọn để tính phí!');
			}else{
				$.ajax({
				url: "{{url('/tinh-phi')}}",
				method: "POST",
				data: {city:city, province:province, wards:wards, _token:_token},

				success:function(){
					location.reload();
				}
			});
			}
			
		});
	})
</script>
@endsection

