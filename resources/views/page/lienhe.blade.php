@extends('master')
@section('content')
	<div class="inner-header">
		<div class="container">
			<div class="pull-left">
				<h6 class="inner-title">Liên hệ</h6>
			</div>
			<div class="pull-right">
				<div class="beta-breadcrumb font-large">
					<a href="./">Home</a> / <span>Liên hệ</span>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<div class="beta-map">
		
		<div class="abs-fullwidth beta-map wow flipInX">
			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3725.202166809682!2d105
			.87106201429708!3d20.984531694664017!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3
			135ac1fa9a77dd9%3A0x74041518b975a5b0!2zMjM3IMSQLiBMxKluaCBOYW0sIFbEqW5oIEjGsG5nLCBIYWkgQsOg
			IFRyxrBuZywgSMOgIE7hu5lpLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1661331223224!5m2!1svi!2s" 
			width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" 
			referrerpolicy="no-referrer-when-downgrade"></iframe>
	</div>
	<div class="container">
		<div id="content" class="space-top-none">
			
			<div class="space50">&nbsp;</div>
			<div class="row">
				<div class="col-sm-8">
					<h2>Liên Hệ</h2>
					<div class="space20">&nbsp;</div>
					@if(Session::has('message'))
                            <div class="alert alert-success">{{Session::get('message')}}</div>
                        @elseif (Session::has('error'))
                            <div class="alert alert-danger">{{Session::get('error')}}</div>
                        @endif
					<form action="{{route('addlienhe')}}" method="post" class="contact-form">	
						<input type="hidden" name="_token" value="{{csrf_token()}}">
						<div class="form-block">
							<input name="your_name" type="text" placeholder="Nhập họ tên" required>
						</div>
						<div class="form-block">
							<input name="your_email" type="email" placeholder="Nhập email" required>
						</div>
						<div class="form-block">
							<input name="your_subject" type="text" placeholder="Tiêu đề" required>
						</div>
						<div class="form-block">
							<textarea name="your_message" placeholder="Nội dung"></textarea>
						</div>
						<div class="form-block">
							<button type="submit" class="beta-btn primary">Gửi<i class="fa fa-chevron-right"></i></button>
						</div>
					</form>
				</div>
				<div class="col-sm-4">
					<h2>Thông tin liên lạc</h2>
					<div class="space20">&nbsp;</div>

					<h6 class="contact-title">Địa chỉ</h6>
					<p>
						237 Đường Lĩnh Nam<br>
						Vĩnh Hưng - Hai Bà Trưng <br>
						Hà Nội
					</p>
					<div class="space20">&nbsp;</div>
					<p>
						Email: phonglang01249@gmail.com
					</p>
					<div class="space20">&nbsp;</div>
					<p>
						Số điện thoại: 0396646090
					</p>
				</div>
			</div>
		</div> <!-- #content -->
	</div> <!-- .container -->
	@include('footer')
@endsection