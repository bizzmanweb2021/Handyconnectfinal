@extends('admin.layouts.main')
@section('content')

    <body class="vertical-layout vertical-menu-modern 2-columns  navbar-sticky footer-static  " data-open="click"
        data-menu="vertical-menu-modern" data-col="2-columns">

        <div class="app-content content">
            <div class="content-overlay"></div>
            <div class="content-wrapper">
                <div class="content-header row">
                    <div class="content-header-left col-12 mb-2 mt-1">
                        <div class="row breadcrumbs-top">
                            <div class="col-12">
                                <h5 class="content-header-title float-left pr-1 mb-0 text-capitalize">
                                    @lang('customer.customers')</h5>
                                <div class="breadcrumb-wrapper col-12">
                                    <ol class="breadcrumb p-0 mb-0">
                                        <li class="breadcrumb-item"><a href="{{ route('admin.dashboard.index') }}"><i
                                                    class="bx bx-home-alt"></i></a>
                                        </li>
                                        <li class="breadcrumb-item active text-capitalize">@lang('services.category')
                                        </li>
                                    </ol>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>



                <div class="content-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="box box-primary">
                                <div class="box-header with-border">
                                    <h3 class="box-title titlefix">@lang('services.category')</h3>
                                    <div class="box-tools float-right">
                                        @can('category.add')
                                            <a href="#!" class="btn btn-primary btn-sm"
                                                onclick="open_modal('add_category_modal','add_category_form')"><i
                                                    class="fa fa-plus"></i>
                                                @lang('role.add') @lang('services.category')
                                            </a>
                                        @endcan
                                    </div>
                                </div>
                                <div class="box-body">
                                    <div class="download_label">@lang('services.category') @lang('role.list')</div>
                                    <table class="" id="category_list" cellspacing="0" width="100%">
                                        <thead>
                                            <tr>
                                                <th>@lang('role.name')</th>
                                                <th>@lang('services.company')</th>
                                                <th>Image</th>
                                                <th>@lang('role.action')</th>
                                            </tr>
                                        </thead>
                                        <tbody>

                                        </tbody>
                                    </table>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>

    {{-- modal --}}
    <div class="modal fade text-left" id="add_category_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1"
        aria-hidden="true">
        <div class="modal-dialog modal-dialog-scrollable" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h3 class="modal-title" id="myModalLabel1">@lang('role.add') @lang('services.category')</h3>
                    <button type="button" class="close rounded-pill" data-dismiss="modal" aria-label="Close">
                        <i class="bx bx-x"></i>
                    </button>
                </div>
                <div class="modal-body">
                    <form id="add_category_form">
                        @csrf
                        <label>@lang('services.category') @lang('role.name'): </label>
                        <div class="form-group">
                            <input type="text" placeholder="@lang('services.category') @lang('role.name')"
                                class="form-control" name="name">
                        </div>
                        <label>@lang('services.company'): </label>
                        <div class="form-group"> 
                            <select name="company" class="form-control company_list">

                            </select>
                        </div>
                         <label>@lang('services.image'): </label>
                        <div class="form-group">
                            <input type="file" class="image_dropify" name="category_image"
                                data-allowed-file-extensions="png jpg jpeg">
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-light-secondary" data-dismiss="modal">
                        <i class="bx bx-x d-block d-sm-none"></i>
                        <span class="d-none d-sm-block">Close</span>
                    </button>
                    <button type="button" class="btn btn-primary ml-1" id="add_category_form_btn">
                        <i class="bx bx-check d-block d-sm-none"></i>
                        <span class="d-none d-sm-block">Save</span>
                    </button>
                </div>
            </div>
        </div>
    </div>
    {{-- end modal --}}

    {{-- edit company --}}
    <div class="modal fade text-left" id="edit_category_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1"
        aria-hidden="true">
        <div class="modal-dialog modal-dialog-scrollable" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h3 class="modal-title" id="myModalLabel1">@lang('role.edit') @lang('services.category')</h3>
                    <button type="button" class="close rounded-pill" data-dismiss="modal" aria-label="Close">
                        <i class="bx bx-x"></i>
                    </button>
                </div>
                <div class="modal-body">
                    <form id="edit_category_form">
                        @csrf
                        <label>@lang('services.category') @lang('role.name'): </label>
                        <div class="form-group">
                            <input type="text" placeholder="@lang('services.category') @lang('role.name')"
                                class="form-control" name="name" id="edit_category_name">
                        </div>
                        <label>@lang('services.company'): </label>
                        <div class="form-group">
                            <select name="company" class="form-control company_list" id="edit_categoty_company_list">

                            </select>
                        </div>
                         <div class="form-group">
                            <div class="text-center">
                                <img src="" alt="" id="edit_category_image" width="100">
                            </div>
                            <input type="file" class="image_dropify" name="category_image"
                                data-allowed-file-extensions="png jpg jpeg">
                            <input type="hidden" name="id" id="edit_category_id">
                       </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-light-secondary" data-dismiss="modal">
                        <i class="bx bx-x d-block d-sm-none"></i>
                        <span class="d-none d-sm-block">Close</span>
                    </button>
                    <button type="button" class="btn btn-primary ml-1" id="edit_category_form_btn">
                        <i class="bx bx-check d-block d-sm-none"></i>
                        <span class="d-none d-sm-block">Save</span>
                    </button>
                </div>
            </div>
        </div>
    </div>
    {{-- edit company --}}



@section('javascript')
    <script>
        $(document).ready(function() {
            get_all_company();
        });

        function get_all_company() {
            $.ajax({
                url: "{{ route('admin.company.get_all_company') }}",
                type: 'get',
                dataType: 'json',
                beforeSend: function() {
                    $('#main_loader').show();
                },
                success: function(data) {
                    // console.log(data)
                    $('#main_loader').hide();
                    var len = data.length;
                    $('.company_list').empty();
                    for (var i = 0; i < len; i++) {
                        $('.company_list').append('<option value="' + data[i]['id'] + '">' + data[i]['name'] +
                            '</option>')
                    }

                },
                error: function(error) {
                    console.log(error)
                    $('#main_loader').hide();
                }
            })
        }


        $('#main_delete_link').click(function(e) {
            e.preventDefault();
            delete_modal_selected_data("{{ URL::signedRoute('admin.category.delete') }}", $(this).attr('href'),
                "{{ csrf_token() }}");
            category_list.ajax.reload();
        });

        function open_edit_company_model(id) {
            $('#edit_category_modal').modal('show');
            $.ajax({
                url: "{{ route('admin.category.get_edit_data') }}",
                type: 'get',
                data: {
                    id: id
                },
                dataType: 'json',
                beforeSend: function() {
                    $('#main_loader').show();
                },
                success: function(data) {

                     if (data.category_image == null) {
                        category_image = 'asset/admin/image/your-logo-here.jpg';
                    } else {
                        category_image = data.category_image;
                    }
                    var url = "{{ asset('') }}";
                    
                    $('#edit_category_id').val(data.id);
                    $('#edit_category_name').val(data.name);
                    $('#edit_categoty_company_list').val(data.company_id);
                    $('#edit_category_image').attr('src', url + category_image);
                  
                    $('#main_loader').hide();
                },
                error: function(error) {
                    console.log(error);
                    $('#main_loader').hide();
                }
            })
        }

        $('#edit_category_form_btn').click(function(e) {
            e.preventDefault();
            var form = $('#edit_category_form')[0];
            var data = new FormData(form);
            $.ajax({
                url: "{{ URL::signedRoute('admin.category.edit_category') }}",
                type: 'post',
                data: data,
                dataType: 'json',
                cache: false,
                processData: false,
                contentType: false,
                beforeSend: function(data) {
                    show_when_ajax_call('#edit_category_form_btn', 'edit_category_form');
                },
                success: function(data) {
                    console.log(data);
                    if (data.status == 'success') {
                        remove_after_ajax_call('#edit_category_form_btn', 'edit_category_form')
                        successMsg(data.message);
                        category_list.ajax.reload();
                        close_modal('edit_category_modal')
                    }
                },
                error: function(error) {
                    show_errors_when_ajax_call('#edit_category_form_btn', 'edit_category_form', error);
                }
            })
        })


        $('#add_category_form_btn').click(function(e) {
            e.preventDefault();
            var form = $('#add_category_form')[0];
            var data = new FormData(form);
            $.ajax({
                url: "{{ URL::signedRoute('admin.category.store') }}",
                type: 'post',
                data: data,
                dataType: 'json',
                cache: false,
                processData: false,
                contentType: false,
                beforeSend: function(data) {
                    show_when_ajax_call('#add_category_form_btn', 'add_category_form');
                },
                success: function(data) {
                    // console.log(data);
                    if (data.status == 'success') {
                        remove_after_ajax_call('#add_category_form_btn', 'add_category_form')
                        successMsg(data.message);
                        category_list.ajax.reload();
                        close_modal('add_category_modal')
                    }
                },
                error: function(error) {
                    show_errors_when_ajax_call('#add_category_form_btn', 'add_category_form', error);
                }
            })
        })

        $(document).ready(function() {
            category_list = $('#category_list').DataTable({
                "aaSorting": [],

                rowReorder: {
                    selector: 'td:nth-child(2)'
                },
                //responsive: 'false',
                dom: "Bfrtip",
                buttons: [

                    {
                        extend: 'copyHtml5',
                        text: '<i class="fas fa-file"></i>',
                        titleAttr: 'Copy',
                        title: $('.download_label').html(),
                        exportOptions: {
                            columns: ':visible'
                        }
                    },

                    {
                        extend: 'excelHtml5',
                        text: '<i class="fa fa-file-excel"></i>',
                        titleAttr: 'Excel',

                        title: $('.download_label').html(),
                        exportOptions: {
                            columns: ':visible'
                        }
                    },

                    {
                        extend: 'csvHtml5',
                        text: '<i class="fa fa-file-text"></i>',
                        titleAttr: 'CSV',
                        title: $('.download_label').html(),
                        exportOptions: {
                            columns: ':visible'
                        }
                    },

                    {
                        extend: 'pdfHtml5',
                        text: '<i class="fa fa-file-pdf"></i>',
                        titleAttr: 'PDF',
                        title: $('.download_label').html(),
                        exportOptions: {
                            columns: ':visible'

                        }
                    },

                    {
                        extend: 'print',
                        text: '<i class="fa fa-print"></i>',
                        titleAttr: 'Print',
                        title: $('.download_label').html(),
                        customize: function(win) {
                            $(win.document.body)
                                .css('font-size', '10pt');

                            $(win.document.body).find('table')
                                .addClass('compact')
                                .css('font-size', 'inherit');
                        },
                        exportOptions: {
                            columns: ':visible'
                        }
                    },

                    {
                        extend: 'colvis',
                        text: '<i class="fa fa-columns"></i>',
                        titleAttr: 'Columns',
                        title: $('.download_label').html(),
                        postfixButtons: ['colvisRestore']
                    },
                ],
                ajax: {
                    url: "{{ route('admin.category.category_create') }}",
                    type: 'get',

                },
                columns: [{
                        data: 'name',
                        name: 'name'
                    },
                    {
                        data: 'company_name',
                        name: 'company_name'
                    },
                    {
                        data: 'category_image',
                        name:'category_image'
                    },
                    {
                        data: 'action'
                    }
                ]
            })
        });
    </script>
@endsection

@endsection
