@extends('page.profile')
@section('tieude')
Thông tin tài khoản
@endsection
@section('noidung')
<div class="container" >
    <div id="content">
        <div class="col-lg-12">
            @if ($message = Session::get('thongbao'))
            <div class="alert alert-success alert-block">
                <button type="button" class="close" data-dismiss="alert">×</button>
                <strong>{{ $message }}</strong>
            </div>
            @endif
            @if (count($errors) > 0)
            <div class="alert alert-danger">
                <strong>Lỗi!</strong> Vui lòng xem lại.
                <ul>
                    @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
            @endif
        </div>
        <div class="col-lg-7" style="padding-bottom:120px">
            <form action="update-profile/{{$user->id}}" method="POST" enctype="multipart/form-data">
                <input type="hidden" name="_token" value="{{ csrf_token() }}" />
                <div class="form-group">
                    <label>Họ và tên</label>
                    <input class="form-control" value="{{$user->full_name}}" name="fullname" placeholder="Vui lòng nhập tên" />
                </div>
                <div class="form-group">
                    <label>Email</label>
                    <input class="form-control" readonly="" value="{{$user->email}}" name="email" placeholder="Vui lòng nhập email" />
                </div>
                <div class="form-group">
                    <label>Số điện thoại</label>
                    <input class="form-control" value="{{$user->phone}}" name="phone" placeholder="Vui lòng nhập phone" />
                </div>
                <div class="form-group">
                    <label>Địa chỉ</label>
                    <input class="form-control" value="{{$user->address}}" name="address" placeholder="Vui lòng nhập address" />
                </div>
                <button type="submit" class="btn btn-default">Cập nhật</button>
                <button type="reset" class="btn btn-default">Reset</button>
                <form>
        </div>
        
        
    </div> <!-- #content -->
</div> <!-- .container -->
@endsection