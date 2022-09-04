
@extends('master')
@section('css')
<style>
/* chi tiết đơn hàng user */
.w3-grey, .w3-hover-grey:hover, .w3-gray, .w3-hover-gray:hover{
    color: #000!important;
    background-color: #bbb!important;
}
.thong_tin_nguoi_mua{
   width: 300px;
    float:left;
    margin-left: 20px;
    line-height: 30px;
}
.thong_tin_nguoi_mua > div{
    font-weight: bold;
}
.thong_tin_nguoi_nhan{
    width: 300px;
    float:left;
    margin-left: 100px;
    line-height: 30px;
}
.thong_tin_nguoi_nhan > div{
    font-weight: bold;
}
</style>
@endsection
@section('content')

<style>
    table td {
        padding: 10px;

    }
    
</style>
   
    <section id="cart_items">
        <div style="height:50px" class="container">
            <div class="breadcrumbs">
                <ol class="breadcrumb">
                  <li><a href="show-profile/{{Auth::user()->id}}">Quản lý tài khoản</a></li>
                  <li class="active">@yield('tieude')</li>
                </ol>
            </div><!--/breadcrums-->
        </div>
  
    <div style="width: 1349px" class="row">
        <div class="col-md-3 well well-sm" style="margin-left: 120px;width:250px">
                    <ul class="nav navbar">
                      <h3 class="">Quản lí tài khoản</h3>
                        <li><a href="show-profile/{{Auth::user()->id}}">Thông tin tài khoản</a></li>
                        <li><a href="show-pass">Đổi mật khẩu</a></li>
                    </ul>
        </div>

        <div class="col-md-6">
         @yield('noidung')
        </div>
    </div>   

</section>
<div id="footer" class="color-div" >
		<div class="container">
			<div class="row">
				<div class="col-sm-2">
					<div class="widget">
						<h4 class="widget-title">Thông tin</h4>
						<div>
							<ul>
								<li><a href="{{route('gioithieu')}}"><i class="fa fa-chevron-right"></i> Giới thiệu</a></li>
								<li><a href="{{route('lienhe')}}"><i class="fa fa-chevron-right"></i> Liên hệ</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-sm-4">
				 <div class="col-sm-10">
					<div class="widget">
						<h4 class="widget-title">Liên hệ chúng tôi</h4>
						<div>
							<div class="contact-info">
								<i class="fa fa-map-marker"></i>
								<p>237 Lĩnh Nam, Hoàng Mai, Hà Nội</p><br>
							</div>
						</div>
					</div>
				  </div>
				</div>
				<div class="col-sm-3">
					<div class="widget">
						<h4 class="widget-title">Đăng ký bản tin</h4>
						<form action="#" method="post">
							<input type="email" name="your_email">
							<button class="pull-right" type="submit">Đăng kí <i class="fa fa-chevron-right"></i></button>
						</form>
					</div>
				</div>
			</div> <!-- .row -->
		</div> <!-- .container -->
	</div> <!-- #footer -->
@endsection
