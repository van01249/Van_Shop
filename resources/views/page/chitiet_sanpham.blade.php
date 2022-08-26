@extends('master')
@section('content')
	<div class="inner-header">
		<div class="container">
			<div class="pull-left">
				<h6 class="inner-title">Sản phẩm {{$sanpham->name}}</h6>
			</div>
			<div class="pull-right">
				<div class="beta-breadcrumb font-large">
					<a href="{{route('trang-chu')}}">Trang chủ</a> / <span>Thông tin chi tiết sản phẩm</span>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>

	<div class="container">
		<div id="content">
			<div class="row">
				<div class="col-sm-9">

					<div class="row">
						<div class="col-sm-4">
							<img src="upload/sanpham/{{$sanpham->image}}" alt="">
						</div>
						<div class="col-sm-8">
							<div class="single-item-body">
								<p class="single-item-title"><h2>{{$sanpham->name}}</h2></p>
								<p class="single-item-price">
									@if($sanpham->promotion_price==0)
										<span class="flash-sale">{{number_format($sanpham->unit_price)}} đồng</span>
									@else
										<span class="flash-del">{{number_format($sanpham->unit_price)}} đồng</span>
										<span class="flash-sale">{{number_format($sanpham->promotion_price)}} đồng</span>
									@endif
								</p>
							</div>

							<div class="clearfix"></div>
							<div class="space20">&nbsp;</div>

							<div class="single-item-desc">
								<p>{!!$sanpham->summary!!}</p>
							</div>
							<div class="space20">&nbsp;</div>

					
							<div class="single-item-options">
							
								<form action="{{route('themgiohang',$sanpham->id)}}" method="get" class="beta-form-checkout">
									<div class="text-center"><button type="submit" class="beta-btn primary" href="#">Thêm giỏ hàng <i class="fa fa-shopping-cart"></i></button></div>
								</form>
							</div>
						</div>
					</div>

					<div class="space40">&nbsp;</div>
					<div class="woocommerce-tabs">
						<ul class="tabs">
							<li class="active"><h4><b><a href="#tab-comment">Đánh giá</a></b></h4></li>
							<li class="active"><h4><b><a href="#tab-add-comment">Thêm đánh giá</a></b></h4></li>
							<li><h4><b><a href="#tab-description">Mô tả</a></b></h4></li>
							<li><h4><b><a href="#tab-binhluan">Bình luận</a></b></h4></li>
						</ul>

						<div class="panel active in" id="tab-comment">
							<style type="text/css">
								.style-comment{
									border: 1px solid #ddd;
									border-radius: 10px;
									background: #F0F0E9;
									
								}
							</style>
							<form >
								{{-- @csrf --}}
								<input type="hidden" name="comment_product_id" class="comment_product_id" value="{{$sanpham->id}}">

								<div id="comment_show"></div>
								{{-- @foreach ($comment as $com)
								<div class="row style-comment">
									<div class="col-md-2">
										
										<img src="public/images.png" width="50%" alt="icon" class="img img-responsive img-thumbnail">
									</div>
									<div class="col-md-10">
										<p style="color: green;">{{$com->comment_name}}</p>
										<p>{{$com->comment}}</p>
									</div>
								</div>
								<p></p>
								@endforeach --}}
								
							</form>
							
						</div>
						<div class="panel" id="tab-add-comment">
							<b><p>Viết đánh giá của bạn</p></b>

							<form>
								<div id="notify-comment"></div>
								<span>
									<input type="hidden" name="product_id" class="product_id" value="{{$sanpham->id}}">
									<input type="text" placeholder="Họ tên của bạn" name="comment_name" class="comment_name" required>
								</span>
								 
								<textarea name="comment" class="comment_content" placeholder="Nội dung bình luận" required></textarea>
								<button type="button" class="btn btn-default pull-right send-comment">Thêm đánh giá</button>
								
							</form>
						</div>	
						<div class="panel" id="tab-description">
							<p>{!!$sanpham->description!!}</p>
						</div>
						<div class="panel" id="tab-binhluan">
							<div id="fb-root"></div>
							<script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v14.0" nonce="AQIciZxd"></script>
							<div class="fb-comments" data-href="{{url()->current()}}" data-width="" data-numposts="10"></div>
						</div>
					</div>
					<div class="space50">&nbsp;</div>
					<div class="beta-products-list">
						<h4>Sản phẩm tương tự</h4>

						<div class="row">
						@foreach($sp_tuongtu as $sptt)
							<div class="col-sm-4">
								<div class="single-item">
									@if($sptt->promotion_price!=0)
										<div class="ribbon-wrapper"><div class="ribbon sale">Sale</div></div>
									@endif
									<div class="single-item-header">
										<a href="{{route('chitietsanpham',$sptt->id)}}"><img src="upload/sanpham/{{$sptt->image}}" alt="" height="150px"></a>
									</div>
									<div class="single-item-body">
										<p class="single-item-title">{{$sptt->name}}</p>
										<p class="single-item-price" style="font-size: 18px">
											@if($sptt->promotion_price==0)
												<span class="flash-sale">{{number_format($sptt->unit_price)}} đồng</span>
											@else
												<span class="flash-del">{{number_format($sptt->unit_price)}} đồng</span>
												<span class="flash-sale">{{number_format($sptt->promotion_price)}} đồng</span>
											@endif
										</p>
									</div>
									<div class="single-item-caption">
										<a class="add-to-cart pull-left" href="{{route('themgiohang',$sptt->id)}}"><i class="fa fa-shopping-cart"></i></a>
										<a class="beta-btn primary" href="{{route('chitietsanpham',$sptt->id)}}">Details <i class="fa fa-chevron-right"></i></a>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
						@endforeach
						</div>
						<div class="row">{{$sp_tuongtu->links()}}</div>
					</div> <!-- .beta-products-list -->
				</div>
				<div class="col-sm-3 aside">
					<div class="widget">
						<h3 class="widget-title">BÁN CHẠY NHẤT</h3>
						<div class="widget-body">
							<div class="beta-sales beta-lists">
								@foreach($sp_sale as $spsl)
								<div class="media beta-sales-item">
									<a class="pull-left" href="{{route('chitietsanpham',$spsl->id)}}l"><img src="upload/sanpham/{{$spsl->image}}" alt=""></a>
									<div class="media-body">
										{{$spsl->name}}
										<p class="single-item-price" style="font-size: 18px">
											@if($spsl->promotion_price==0)
												<span class="flash-sale">{{number_format($spsl->unit_price)}} đồng</span>
											@else
												<span class="flash-del">{{number_format($spsl->unit_price)}} đồng</span>
												<span class="flash-sale">{{number_format($spsl->promotion_price)}} đồng</span>
											@endif
											</p>
									</div>
								</div>
								@endforeach
							</div>
						</div>
					</div> <!-- best sellers widget -->
					<div class="widget">
						<h3 class="widget-title">SẢN PHẨM MỚI</h3>
						<div class="widget-body">
							<div class="beta-sales beta-lists">
							@foreach($sp_moi as $spm)
								<div class="media beta-sales-item">
									<a class="pull-left" href="{{route('chitietsanpham',$spsl->id)}}l"><img src="upload/sanpham/{{$spm->image}}" alt=""></a>
									<div class="media-body">
										{{$spm->name}}
										<p class="single-item-price" style="font-size: 18px">
											@if($spm->promotion_price==0)
												<span class="flash-sale">{{number_format($spm->unit_price)}} đồng</span>
											@else
												<span class="flash-del">{{number_format($spm->unit_price)}} đồng</span>
												<span class="flash-sale">{{number_format($spm->promotion_price)}} đồng</span>
											@endif
											</p>
									</div>
								</div>
								@endforeach
							</div>
						</div>
					</div> <!-- best sellers widget -->
				</div>
			</div>
		</div> <!-- #content -->
	</div> <!-- .container -->
	@include('footer')
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
	$(document).ready(function(){

		load_comment();
		// var _token = $('input[name="_token"]').val();
		// alert(product_id); 
		// alert(_token); 
		function load_comment(){
			var product_id = $('.comment_product_id').val();
			// alert(product_id); 
			// var _token = $('input[name="_token"]').val();
			$.ajax({
				url: "{{url('/load-comment')}}",
				type: 'GET',
				data:{product_id:product_id},
				success:function(data){
					$('#comment_show').html(data);
				}
			});
		}

		$('.send-comment').click(function(){
			var product_id = $('.product_id').val();
			var comment_name = $('.comment_name').val();
			var comment_content = $('.comment_content').val();

			$.ajax({
				url: "{{url('/add-comment')}}",
				type: 'GET',
				data:{product_id:product_id, comment_name:comment_name, comment_content:comment_content},
				success:function(data){
					
					$('#notify-comment').html('<span class="text text-success">Thêm bình luận thành công. Cần chờ duyệt!</span>');
					load_comment();
					$('#notify-comment').fadeOut(5000);
					$('.comment_name').val('');
					$('.comment_content').val('');
				}
			});
		});
	});
</script>
@endsection