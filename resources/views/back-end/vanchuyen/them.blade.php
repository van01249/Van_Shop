
@extends('back-end.master')
@section('title')
Trang danh thêm phí vận chuyển
@endsection
@section('content')
<!-- Page Content -->
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Phí vận chuyển
                    <small>Thêm</small>
                </h1>
            </div>
            <!-- /.col-lg-12 -->
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
            <form>
                <input type="hidden" name="_token" value="{{ csrf_token() }}" />
                <div class="form-group">
                    <label for="">Chọn Thành Phố</label>
                    <select name="city" id="city" class="form-control input-sm m-bot15 choose city">
                        <option value="">-----Chọn-----</option>
                        @foreach ($city as $ci)
                            <option value="{{$ci->matp}}">{{$ci->name}}</option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group">
                    <label for="">Chọn Quận/Huyện</label>
                    <select name="province" id="province" class="form-control input-sm m-bot15 province choose">
                        <option value="">-----Chọn-----</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="">Chọn Xã/Phường</label>
                    <select name="wards" id="wards" class="form-control input-sm m-bot15 wards">
                        <option value="">-----Chọn-----</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="">Phí vận chuyển</label>
                    <input type="number" name="phi" class="form-control phi" placeholder="Nhập phí vận chuyển ">
                </div>
                <div>
                    <button type="button" name="add_phi" class="btn btn-info add_phi">Thêm</button>
                </div>
            </form>
        </div>
        <div id="load_delivery">
            
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
</div>
<!-- /#page-wrapper -->
@endsection