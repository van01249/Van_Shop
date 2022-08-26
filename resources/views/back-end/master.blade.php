
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="">
    <title>@yield('title')</title>
    <base href="{{asset('')}}">
    <link rel="shortcut icon" href="source/image/icon.png" type="image/x-icon">

    <!-- Bootstrap Core CSS -->
    <link href="back-end/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="back-end/bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="back-end/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="back-end/bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- DataTables CSS -->
    <link href="back-end/bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="back-end/bower_components/datatables-responsive/css/dataTables.responsive.css" rel="stylesheet">

    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
    
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css">
</head>

<body>

    <div id="wrapper">
        @include('back-end.layout.header')
        @yield('content')

    </div>
    <!-- /#wrapper -->

    <script type="text/javascript" language="javascript" src="back-end/ckeditor/ckeditor.js" ></script>
    <!-- jQuery -->
    <script src="back-end/bower_components/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="back-end/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="back-end/bower_components/metisMenu/dist/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="back-end/dist/js/sb-admin-2.js"></script>

    <!-- DataTables JavaScript -->
    <script src="back-end/bower_components/DataTables/media/js/jquery.dataTables.min.js"></script>
    <script src="back-end/bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.min.js"></script>

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
                responsive: true
        });
    });
    </script>
    @yield('script')
    <script type="text/javascript">
        $(document).ready(function(){
            fetch_delivery();
            function fetch_delivery(){
                // var _token = $('input[name="_token"]').val();

                $.ajax({
                    url: "{{url('/admin/vanchuyen/select-delivery')}}",
                    method: "GET",
                    // data: {_token:_token},

                    success:function(data){
                        $('#load_delivery').html(data);
                    }
                });
            }

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
                    url: "{{url('/admin/vanchuyen/select')}}",
                    method: "POST",
                    data: {action:action, ma_id:ma_id, _token:_token},

                    success:function(data){
                        $('#'+result).html(data);
                    }
                });
            });

            $('.add_phi').click(function(){
                // alert('OK');
                var city = $('.city').val();
                var province = $('.province').val();
                var wards = $('.wards').val();
                var phi = $('.phi').val();
                var _token = $('input[name="_token"]').val();
                // alert(city);
                // alert(province);
                // alert(wards);
                // alert(phi);
                // alert(_token);

                $.ajax({
                    url: "{{url('/admin/vanchuyen/them')}}",
                    method: "POST",
                    data: {city:city, province:province, wards:wards, phi:phi, _token:_token},

                    success:function(data){
                        alert('Thêm phí vận chuyển thành công!');
                    }
                });
            })
        })
    </script>
    <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>

    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
    
    

    <script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>

    <script>
        $( function() {
            $( "#datepicker" ).datepicker({
                prevText:"Tháng trước",
                nextText:"Tháng sau",
                dateFormat:"yy-mm-dd",
                dayNamesMin: [ "Thứ 2", "Thứ 3", "Thứ 4", "Thứ 5", "Thứ 6", "Thứ 7", "Chủ nhật"],
                duration:"slow"
            });
        } );
        $( function() {
            $( "#datepicker2" ).datepicker({
                prevText:"Tháng trước",
                nextText:"Tháng sau",
                dateFormat:"yy-mm-dd",
                dayNamesMin: [ "Thứ 2", "Thứ 3", "Thứ 4", "Thứ 5", "Thứ 6", "Thứ 7", "Chủ nhật"],
                duration:"slow"
            });
        } );
    </script>

    <script src="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            char30daysorder();

            var chart = new Morris.Bar({
                element: 'myfirstchart',
                lineColors: ['#819C79', '#fc8710', '#FF6541', '#A4ADD3', '#766B56'],

                pointFillColors: ['#ffffff'],
                pointStrokeColors: ['black'],
                fillOpacity: 0.6,
                hideHover: 'auto',
                parseTime: false,

                xkey: 'period',
                ykeys: ['order', 'sales', 'profit', 'quantity'],
                behaveLikeLine: true,

                labels: ['Đơn hàng', 'Doanh số', 'Lợi nhuận', 'Số lượng'] 
            });

            function char30daysorder(){
                $.ajax({
                    url: "{{url('/admin/day-order')}}",
                    method: "GET",
                    dataType: "JSON",

                    success:function(data){
                        chart.setData(data);
                    }
                });
            }
            
            $('.dashboard-filter').change(function(){
                var dashboard_value = $(this).val();

                // alert(dashboard_value);
                $.ajax({
                    url: "{{url('/admin/dashboard-filter')}}",
                    method: "GET",
                    dataType: "JSON",
                    data: {dashboard_value:dashboard_value},

                    success:function(data){
                        chart.setData(data);
                    }
                });
            });

            $('#btn-dashboard-filter').click(function(){
               
                var from_date = $('#datepicker').val();
                var to_date = $('#datepicker2').val();
                
                $.ajax({
                    url: "{{url('/admin/filter-by-date')}}",
                    method: "GET",
                    dataType: "JSON",
                    data: {from_date:from_date, to_date:to_date},

                    success:function(data){
                        chart.setData(data);
                    }
                });
            });
        });
    </script>
    
</body>

</html>
