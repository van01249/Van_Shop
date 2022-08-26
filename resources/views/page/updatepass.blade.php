@extends('master')
@section('content')
<div class="inner-header">
		<div class="container">
			<div class="pull-left">
				<h6 class="inner-title">Cập nhật mật khẩu</h6>
			</div>
			<div class="pull-right">
				<div class="beta-breadcrumb">
					<a href="./">Trang chủ</a> / <span>Cập nhật mật khẩu</span>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	
	<div class="container">
		<div id="content">
			@php
                $email = $_GET['email'];
                $token = $_GET['token'];
            @endphp
			<form action="{{route('resetnewpass')}}" method="post" class="beta-form-checkout">
			<input type="hidden" name="_token" value="{{csrf_token()}}">
				<div class="row">
					<div class="col-sm-3"></div>
					
					<div class="col-sm-6">
						<h4>Điền mật khẩu mới</h4>
                        @if(Session::has('message'))
                            <div class="alert alert-success">{{Session::get('message')}}</div>
                        @elseif (Session::has('error'))
                            <div class="alert alert-danger">{{Session::get('error')}}</div>
                        @endif
						<div class="space20">&nbsp;</div>

						
						<div class="form-block">
							<label for="password">Password*</label>
                            <input type="hidden" name="email" value="{{$email}}">
                            <input type="hidden" name="token" value="{{$token}}">
							<input type="text" name="password" placeholder="Nhập mật khẩu của bạn" required>
						</div>
						<div class="form-block">
							<button type="submit" class="btn btn-primary">Gửi</button>
						</div>
					</div>
					<div class="col-sm-3"></div>
				</div>
			</form>
		</div> <!-- #content -->
	</div> <!-- .container -->
	@include('footer')
@endsection