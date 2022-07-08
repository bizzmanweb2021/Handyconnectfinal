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
                                    @lang('Assign Job')</h5>
                                <div class="breadcrumb-wrapper col-12">
                                    <ol class="breadcrumb p-0 mb-0">
                                        <li class="breadcrumb-item"><a href="{{ route('admin.dashboard.index') }}"><i
                                                    class="bx bx-home-alt"></i></a>
                                        </li>
                                        <li class="breadcrumb-item active text-capitalize">@lang('Assign Job')
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
                                    <h3 class="box-title titlefix">@lang('Assign Job')</h3>
                                    <!--div class="box-tools float-right">
                                            <a href="#!" class="btn btn-primary btn-sm"
                                                onclick="open_modal('add_subcontractor','add_subcontractor_form')"><i
                                                    class="fa fa-plus"></i>
                                                @lang('Asign Job')
                                            </a>
                                    </div -->
                                </div>
                                <div class="box-body">
                                    <div class="download_label">@lang('Assign Job') @lang('role.list')</div>
									
                                      <table id="assign_job_list" class="table table-striped table-bordered table-sm" cellspacing="0" width="100%">
                                            <thead>
                                                   <tr>
                                                      <th class="th-sm">Job ID
                                                      </th>
                                                      <th class="th-sm">SC Name
                                                      </th>
                                                      <th class="th-sm">Quotation Number
                                                      </th>
                                                      <th class="th-sm">Service Name
                                                      </th>
                                                      <th class="th-sm">Order ID
                                                      </th>
	                                                  <th class="th-sm">Type
                                                      </th>
                                                      <th class="th-sm">Status
                                                      </th>
													  <th class="th-sm">Actions
                                                      </th>
    </tr>
  </thead>
  <tbody>
    <?php
	//echo count($arr);
	
									  foreach($data as $result)
									  {
										  //echo $i;
										  //echo '<pre>';print_r($arr[$i]);
										  
									?>
									<tr>
									<td><?php echo $result->job_unique_id;?></td>	
									<td><?php echo $result->subcontractor_name;?></td>	
									<td><?php echo $result->quotation_number;?></td>	
									<td><?php echo $result->service_name;?></td>	
									<td><?php echo $result->order_id;?></td>									
									<td><?php echo $result->type;?></td>									
									<td><?php if($result->status == 1){ echo '<span class="badge badge-inline badge-danger">In Process</span>';} if($result->status == 2){ echo '<span class="badge badge-inline badge-success">Complete</span>';}?></td>	
                                    									
									<td>									    
									    <a class="btn btn-soft-info  btn-icon btn-circle btn-sm" href="javascript:void(0)" rel=<?php echo $result->id;?> id="complete_order" title="complete"><i class="fa-solid fa-check"></i></a> 
									    <a class="btn btn-soft-info  btn-icon btn-circle btn-sm" href="javascript:void(0)" rel=<?php echo $result->id;?> id="View_assignedjob_order" title="View"><i class="fa-solid fa-eye"></i></a> 
									</td>
									</tr>
									<?php
									  }
									?>
  </tbody>
  <tfoot>
    <tr>
      <th>Job ID
      </th>
      <th>SC Name
      </th>
      <th>Quotation Number
      </th>
      <th>Service Name
      </th>
      <th>Order ID
      </th>
	  <th>Type
      </th>
      <th>Status
      </th>
	  <th>Actions
      </th>
    </tr>
  </tfoot>
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
    <div class="modal fade text-left" id="add_subcontractor" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1"
        aria-hidden="true">
        <div class="modal-dialog modal-dialog-scrollable" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h3 class="modal-title" id="myModalLabel1">@lang('role.Assign') @lang('subcontractor')</h3>
                    <button type="button" class="close rounded-pill" data-dismiss="modal" aria-label="Close">
                        <i class="bx bx-x"></i>
                    </button>
                </div>
                <div class="modal-body">
                    <form id="add_subcontractor_form">
                        @csrf
                        <label> @lang('Subcontractor Name'): </label>
                        <div class="form-group">
                           <select name="subcontractor_name" id="sub_contractor_id" class="form-control subcontractor_list">
                            <option>
                                -----CLICK TO CHOOSE SUB CONTRACTOR-----
                            </option>
                            </select>
                        </div>
                            <label> @lang('Customer Name'): </label>
                        <div class="form-group">
                           <select name="customer_name" id="customer_id" class="form-control customer_list">
                              
                           <option>
                                -----CLICK TO CHOOSE CUSTOMERS-----
                            </option>
                            </select>
                        </div>
                            <label> @lang('Order'): </label>
                        <div class="form-group">
                           <select name="customer_order" id="customer_order_id" class="form-control customer_order">
                            <option>
                                Please Select Customer First
                            </option>
                            </select>
                        </div> 
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-light-secondary" data-dismiss="modal">
                        <i class="bx bx-x d-block d-sm-none"></i>
                        <span class="d-none d-sm-block">Close</span>
                    </button>
                    <button type="button" class="btn btn-primary ml-1" id="add_subcontractor_form_btn">
                        <i class="bx bx-check d-block d-sm-none"></i>
                        <span class="d-none d-sm-block">Save</span>
                    </button>
                </div>
            </div>
        </div>
    </div>
    {{-- end modal --}}

    {{-- edit subcontractor --}}
     <div class="modal fade text-left" id="edit_subcontractor_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title" id="myModalLabel1">@lang('view') @lang('subcontractor')</h3>
                <button type="button" class="close rounded-pill" data-dismiss="modal" aria-label="Close">
                    <i class="bx bx-x"></i>
                </button>
            </div>
             <div class="modal-body">
                    <table class="w-100">
                        <tbody>
                            <tr>
                                <td>
                                    <label> @lang('Subcontractor Name') : </label>
                                </td>
                                <td> 
                                    <input class='form-control form-sm' id='sucontractor-name'>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                     <label> @lang('Customer Name') : </label>
                                </td>
                                <td>
                                    <input class='form-control form-sm' id="customer-name">
                                    
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label> @lang('Order') : </label>
                                </td>
                                <td>
                                    <input class='form-control form-sm' id="order">
                                    
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label> @lang('Status') : </label>
                                </td>
                                <td>
                                    <input class='form-control form-sm' id="status-name">
                                    
                                </td>
                            </tr>
                        </tbody>
                    </table>
                  
                </div>
             <div class="modal-footer">
                <button type="button" class="btn btn-light-secondary" data-dismiss="modal">
                    <i class="bx bx-x d-block d-sm-none"></i>
                    <span class="d-none d-sm-block">Close</span>
                </button>
                <button type="button" class="btn btn-primary ml-1" id="edit_subcontractor_form_btn">
                    <i class="bx bx-check d-block d-sm-none"></i>
                    <span class="d-none d-sm-block">Update</span>
                </button>
            </div>
        </div>
    </div>
</div>
    {{-- view subcontractor --}}
     <div class="modal fade text-left" id="view_subcontractor_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title" id="myModalLabel1">@lang('view') @lang('subcontractor')</h3>
                <button type="button" class="close rounded-pill" data-dismiss="modal" aria-label="Close">
                    <i class="bx bx-x"></i>
                </button>
            </div>
             <div class="modal-body">
                    <table>
                        <tbody>
                            <tr>
                                <td>
                                    <label> @lang('Subcontractor Name') : </label>
                                </td>
                                <td> 
                                    <span id='sucontractor-name'></span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                     <label> @lang('Customer Name') : </label>
                                </td>
                                <td>
                                    <span id="customer-name"></span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label> @lang('Order') : </label>
                                </td>
                                <td>
                                    <span id="order"></span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label> @lang('Status') : </label>
                                </td>
                                <td>
                                    <span id="status-name"></span>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                  
                </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-light-secondary" data-dismiss="modal">
                    <i class="bx bx-x d-block d-sm-none"></i>
                    <span class="d-none d-sm-block">Close</span>
                </button>

            </div>
        </div>
    </div>
</div>

<!-- Job Details Modal -->
<div id="subcontractor_job_modal" class="modal fade">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
		    <div class="p-1">
		    <div class="text-left">
                <h1 class="h4 text-gray-900 ">Assign Order Details</h1>
				<button type="button" class="close rounded-pill" data-dismiss="modal" aria-label="Close">
                    <i class="bx bx-x"></i>
                </button>
            </div>
			</div>
			<div id="showData"></div>
			<div id="hideData">
			<form method="post" id="details_form">
			             <div class="card">
                             <div class="card-body">
				                 @csrf
			                     <div class="row">
                                     <div class="col-md-4">
					                     <label>Job Unique ID:</label>
                                         <input type="text" class="form-control form-control-user" id="job_unique_id"
                                                placeholder="Job Unique ID" name="job_unique_id">
						                 <span id="job_unique_id_error" style="color: red"></span>
                                     </div>
                                     <div class="col-md-4">
						                  <label>Quotation Number:</label>
                                          <input type="text" class="form-control form-control-user" id="quotation_number"
                                                 placeholder="Quotation Number" name="quotation_number">
						                  <span id="quotation_number_error" style="color: red"></span>
                                     </div>
					                 <div class="col-md-4">
						                  <label>SubContractor Name:</label>
                                          <input type="text" class="form-control form-control-user" id="subcontractor_name"
                                                 placeholder="SubContractor Name" name="subcontractor_name">
						                  <span id="subcontractor_name_error" style="color: red"></span>
                                     </div>					
                                  </div>
						          <div class="row">
                                      <div class="col-md-4">
					                      <label>Customer Name:</label>
                                          <input type="text" class="form-control form-control-user" id="customer_name"
                                                 placeholder="Customer Name" name="customer_name">
						                  <span id="service_name_error" style="color: red"></span>
                                      </div>
                                      <div class="col-md-4">
						                  <label>Service Name:</label>
                                          <input type="text" class="form-control form-control-user" id="service_name"
                                                 placeholder="Service Name" name="service_name">
						                  <span id="service_name_error" style="color: red"></span>
                                      </div>
					                  <div class="col-md-4">
						                  <label>Service Price:</label>
                                          <input type="text" class="form-control form-control-user" id="subcontractor_name"
                                                 placeholder="Subcontractor Name" name="subcontractor_name">
						                  <span id="subcontractor_Name_error" style="color: red"></span>
                                      </div>					
                                   </div>
						           <div class="row">
                                       <div class="col-md-4">
					                       <label>Order ID:</label>
                                           <input type="datetime" class="form-control form-control-user" id="order_id"
                                                  placeholder="Order ID" name="order_id">
						                   <span id="order_id_error" style="color: red"></span>
                                       </div>
                                       <div class="col-md-4">
						                   <label>Type:</label>
                                           <input type="datetime" class="form-control form-control-user" id="finish_date"
                                                  placeholder="Finish Date" name="finish_date">
						                   <span id="finish_date_error" style="color: red"></span>
                                       </div>				
                                    </div>
                                </div>
                           </div>			
                      </form>
		         </div>
				 <div class="modal-footer">
              <button type="button" class="btn btn-light-secondary" data-dismiss="modal">
                      <i class="bx bx-x d-block d-sm-none"></i>
                      <span class="d-none d-sm-block">Close</span>
               </button>
          </div>
		</div>
	</div>
</div>
<!-- End Modal -->

@section('javascript')
<script>
function open_edit_subcontractor_model(id){
    $('#edit_subcontractor_modal').modal('show');
    $.ajax({
        url: "{{ route('subcontractor.edit_job') }}",
        type: 'get',
        data: {
            id: id
        },
        dataType: 'json',
        beforeSend: function() {
            $('#main_loader').show();
        },
        success: function(data) { 
            $.each(data, function(key, value){
                console.log(value);
                    $('#sucontractor-name').val(value.subcontractor_name);
                    $('#customer-name').val(value.customer_name);
                    $('#order').val(value.order_id);
                    $('#status-name').val(value.sts); 
                    $('#main_loader').hide();
            });
         

        },
        error: function(error) {
            // console.log(error);
            $('#main_loader').hide();
        }
  });
}
function open_view_modal(id) {
     
    $('#view_subcontractor_modal').modal('show');
    $.ajax({
        url: "{{ route('subcontractor.view_job') }}",
        type: 'get',
        data: {
            id: id
        },
        dataType: 'json',
        beforeSend: function() {
            $('#main_loader').show();
        },
        success: function(data) { 
            $.each(data, function(key, value){
                console.log(value);
                    $('#sucontractor-name').text(value.subcontractor_name);
                    $('#customer-name').text(value.customer_name);
                    $('#order').text(value.order_id);
                    $('#status-name').text(value.sts); 
                    $('#main_loader').hide();
            });
         

        },
        error: function(error) {
            // console.log(error);
            $('#main_loader').hide();
        }
  });
} 
        
    $(document).ready(function() {
        
        get_all_subcontractor(); 
        get_all_customer(); 
        
        
        assign_job_list = $('#assign_job_list').DataTable({ 
            
                "aaSorting": [],
 
                rowReorder: {
                    selector: 'td:nth-child(2)'
                },
                
                ajax: {
                    url: "{{ route('subcontractor.create_job') }}",
                    type: 'get',

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
              
                columns:  [
                    {
                        data: 'job_unique_id',
                        name: 'job_unique_id'
                    },
                    {
                        data: 'subcontractor_name',
                        name: 'subcontractor_name'
                    },
                    {
                        data: 'customer_name',
                        name: 'customer_name'
                    },
                    {
                        data: 'order_id',
                        name: 'order_id'
                    },
                    {
                        data: 'status',
                        name: 'status'
                    },
                    {
                        data: 'action',
                      
                    }

                ]
            }); 
        function get_all_subcontractor() {
            $.ajax({
                url: "{{ route('subcontractor.get_all_subcontractor') }}",
                type: 'get',
                dataType: 'json',
                beforeSend: function() {
                    $('#main_loader').show();
                },
                success: function(data) {
                     
                    $('#main_loader').hide();
                    var len = data.length;
                    $('.subcontractor_list').empty();
                    for (var i = 0; i < len; i++) {
                        $('.subcontractor_list').append('<option value="' + data[i]['id'] + '">' + data[i]['name'] +
                            '</option>')
                    }

                },
                error: function(error) {
                    console.log(error)
                    $('#main_loader').hide();
                }
            })
        } 
        function get_all_customer() {
            $.ajax({
                url: "{{ route('admin.customer.get_all_customer') }}",
                type: 'get',
                dataType: 'json',
                beforeSend: function() {
                    $('#main_loader').show();
                },
                success: function(data) {
                      
                    $('#main_loader').hide();
                    var len = data.length;
                    $('.customer_list').empty();
                    $('.customer_list').append('<option value="">Select Customer</option>')
                    for (var i = 0; i < len; i++) {
                        $('.customer_list').append('<option value="' + data[i]['customer_unique_id'] + '">' + data[i]['name'] +
                            '</option>')
                    }

                },
                error: function(error) {
                    console.log(error)
                    $('#main_loader').hide();
                }
            })
        } 
        
        //delete function 
        $('#main_delete_link').click(function(e) {
            e.preventDefault();
            delete_modal_selected_data("{{ route('subcontractor.delete_job') }}", $(this).attr('href'),
                "{{ csrf_token() }}");
            assign_job_list.ajax.reload();
        });
        //view 
        
       
        
        $(document).on("change","#customer_id", function(){
            var customer_unique_id = $('#customer_id').val();
            $.ajax({
                url: "{{ route('subcontractor.get_customer_order') }}",
                type: 'post',
                data: {
                    "_token": "{{ csrf_token() }}",
                    "customer_unique_id" : customer_unique_id
                },
                dataType: 'json',
                beforeSend: function() {
                    $('#main_loader').show();
                },
                success: function(data) {
                    // console.log(data)
                    $('#main_loader').hide();
                    var len = data.length;
                    $('.customer_order').empty();
                    if(len == 0) {
                        $('.customer_order').append('<option value="">No Order Found</option>')
                    }
                    for (var i = 0; i < len; i++) {
                        $('.customer_order').append('<option value="' + data[i]['order_id'] + '">' + data[i]['service']['service_name'] + ' (#'+ data[i]['service_unique_id'] +')'+
                            '</option>')
                    }

                },
                error: function(error) {
                    console.log(error)
                    $('#main_loader').hide();
                }
            })
        }); 
        
        $('#add_subcontractor_form_btn').click(function(e) {
            e.preventDefault();
            var form = $('#add_subcontractor_form')[0];
            var data = new FormData(form);
            $.ajax({
                url: "{{ route('subcontractor.store_job') }}",
                type: 'post',
                data: data,
                dataType: 'json',
                cache: false,
                processData: false,
                contentType: false,
                beforeSend: function(data) {
                    show_when_ajax_call('#add_subcontractor_form_btn', 'add_subcontractor_form');
                },
                success: function(data) {
                    // console.log(data);
                    if (data.status == 'success') {
                         close_modal('add_subcontractor');
                          remove_after_ajax_call('#add_subcontractor_form_btn', 'add_subcontractor_form')
                         successMsg(data.message);
                         assign_job_list.ajax.reload();
                        
                       
                    }
                },
                error: function(error) {
                    show_errors_when_ajax_call('#add_subcontractor_form_btn', 'add_subcontractor_form', error);
                }
            })
        });    
        
    }); 

$('body').on('click','#complete_order',function() {
	//alert('Hello');
var id= $(this).attr('rel');
//alert(id);
 $.ajax({
    url: "{{ route('approve_job') }}",
    type: "get",
    data: 
	{
        "_token": "{{ csrf_token() }}",
         id: id
    },
    dataType: "json",
    beforeSend: function() 
	{
        $('#user_loder').show()
    },
    success: function(data) 
	{
        if (data.status == 'success') {
                    toastr.success(data.message);
					window.location.href="{{ route('subcontractor.assign_job') }}";
                }
				else{
					toastr.error();
				}
    },
    error: function() 
	{
        //$('#user_loder').hide();
        alert("Fail")
    }
    })
});	

$('body').on('click','#View_assignedjob_order',function()
	{
	var id=$(this).attr('rel');
	//alert(id);
	  $.ajax({
    url: "{{ route('view_job_details') }}",
    type: "get",
    data: 
	{
        "_token": "{{ csrf_token() }}",
         id: id
    },
    dataType: "html",
    beforeSend: function() 
	{
        $('#user_loder').show()
    },
    success: function(data) 
	{
        $('#hideData').hide();
        $('#showData').html(data);
        $('#subcontractor_job_modal').modal('show');		
		//alert("Pass")	
    },
    error: function() 
	{
        //$('#user_loder').hide();
        alert("Fail")
    }
    })
	});
</script>
@endsection

@endsection
