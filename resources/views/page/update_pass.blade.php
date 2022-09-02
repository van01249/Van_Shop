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
            <form action="update-pass" method="POST" enctype="multipart/form-data">
                <input type="hidden" name="_token" value="{{ csrf_token() }}" />
                <div class="form-group row">
                    <div class="form-group col-md-6">
                         <label for="example-text-input">Mật khẩu cũ</label>
                         <input class="form-control" type="password" name="oldPassword">
                         <span style="color:red">{{ $errors->first('oldPassword') }}</span>
                    
                    <br>

                        <label for="example-text-input">Mật khẩu mới</label>
                        <input class="form-control" type="password" name="newPassword">
                        <span style="color:red">{{ $errors->first('newPassword') }}</span>
                    <br>
                        <label for="example-text-input">Nhập lại mật khẩu</label>
                        <input class="form-control" type="password" name="rePassword">
                        <span style="color:red">{{ $errors->first('rePassword') }}</span>
                    <br>
                        <div align="right"><input type="submit" value="Lưu" class="btn btn-primary"></div>
                    </div>
                
                </div>
            <form>
        </div>
        
        
    </div> <!-- #content -->
</div> <!-- .container -->
@endsection