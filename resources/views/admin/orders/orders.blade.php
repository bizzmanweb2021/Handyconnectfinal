<style>
    table tbody tr td span{
        font-size:13px;
    }
</style>
<div>
    <h5>
        Order Details
    </h5>
<table id="dtBasicExample" class="table table-striped table-bordered table-sm" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th class="th-sm">Customer Name

      </th>
      <th class="th-sm">Order ID

      </th>
      <th class="th-sm">Quotation Number

      </th>
      <th class="th-sm">Service

      </th>
      <th class="th-sm">Price

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
	
									  for($i=0; $i<count($arr); $i++)
									  {
										  //echo $i;
										  //echo '<pre>';print_r($arr[$i]);
										  
									?>
									<tr>
									<td><?php echo $arr[$i]['customer_name'];?></td>	
									<td><?php echo $arr[$i]['order_unique_id'];?></td>	
									<td><?php echo $arr[$i]['quotation_unique_id'];?></td>	
									<td><?php echo $arr[$i]['service_unique_id'];?></td>	
									<td><?php echo $arr[$i]['price'];?></td>									
									<td><?php if($arr[$i]['status'] == 0){ echo '<span class="badge badge-inline badge-danger">Not Assigned</span>';} if($arr[$i]['status'] == 1){ echo '<span class="badge badge-inline badge-success">Assigned</span>';}?></td>	
                                    									
									<td>									    
									    <a class="btn btn-soft-info  btn-icon btn-circle btn-sm" href="javascript:void(0)" rel=<?php echo $arr[$i]['id'];?> id="assigning_order" title="Edit"><i class="las la-edit"></i></a> 
									</td>
									</tr>
									<?php
									  }
									?>
  </tbody>
  <tfoot>
    <tr>
      <th>Customer Name
      </th>
      <th>Order ID
      </th>
      <th>Quotation Number
      </th>
      <th>Service
      </th>
      <th>Price
      </th>
	  <th>Status
      </th>
      <th>Actions
      </th>
    </tr>
  </tfoot>
</table>
</div>
<!-- Add Modal HTML -->
<div id="assigningModal" class="modal fade">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
		    <div class="p-1">
		    <div class="text-left">
                <h1 class="h4 text-gray-900 ">Assign Order</h1>
            </div>
			</div>
			<div id="showData"></div>
			<div id="hideDate">
		    <form method="post" id="details_form">
			    <div class="card">
                <div class="card-body">
				@csrf
				 <ul class="nav nav-tabs" role="tablist">
    <li class="nav-item">
      <a class="nav-link active" data-toggle="tab" href="#home">SubContactor</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="tab" href="#menu1">Employee</a>
    </li>
  </ul>
 
  <!-- Tab panes -->
  
  <div class="tab-content">
   
    <div id="home" class="container tab-pane active"><br>
	 <h3>Subcontractor</h3>
					    <div class="row">
                            <div class="col-md-4">
					             <label>Order ID:</label>
                                 <input type="text" class="form-control form-control-user" id="order_id"
                                        placeholder="Order ID" name="order_id">
						         <span id="order_id_error" style="color: red"></span>
                             </div>
                             <div class="col-md-4">
						          <label>Customer Name:</label>
                                  <input type="text" class="form-control form-control-user" id="customer_name"
                                         placeholder="Customer Name" name="customer_name">
						          <span id="customer_name_error" style="color: red"></span>
                             </div>
					         <div class="col-md-4">
						          <label>Quotation Number:</label>
                                  <input type="text" class="form-control form-control-user" id="quotation_number"
                                         placeholder="Quotation Number" name="quotation_number">
						          <span id="quotation_number_error" style="color: red"></span>
                             </div>					
                         </div>
						 <div class="row">
                            <div class="col-md-4">
					             <label>Service Name:</label>
                                  <input type="text" class="form-control form-control-user" id="service_name"
                                         placeholder="Sevice Name" name="service_name">
						          <span id="service_name_error" style="color: red"></span>
                             </div>
                             <div class="col-md-4">
						           <label>Price:</label>
                                 <input type="text" class="form-control form-control-user" id="service_price"
                                        placeholder="Service Price" name="service_price">
						         <span id="service_price_error" style="color: red"></span>
                             </div>
					         <div class="col-md-4">
						          <label>Subcontractor Name:</label>
                                 <input type="text" class="form-control form-control-user" id="subcontractor_name"
                                        placeholder="Subcontractor Name" name="subcontractor_name">
						         <span id="subcontractor_Name_error" style="color: red"></span>
                             </div>					
                         </div>
						 <div class="row">
                            <div class="col-md-4">
					             <label>Job Start Date And Time:</label>
                                  <input type="datetime" class="form-control form-control-user" id="start_date"
                                         placeholder="Start Date" name="Start_date">
						          <span id="Start_date_error" style="color: red"></span>
                             </div>
                             <div class="col-md-4">
						           <label>Job Finish Date And Time:</label>
                                 <input type="datetime" class="form-control form-control-user" id="finish_date"
                                        placeholder="Finish Date" name="finish_date">
						         <span id="finish_date_error" style="color: red"></span>
                             </div>				
                         </div>
    </div>
    <div id="menu1" class="container tab-pane fade"><br>
      <h3>Employee</h3>
					    <div class="row">
                            <div class="col-md-4">
					             <label>Order ID:</label>
                                 <input type="text" class="form-control form-control-user" id="order_id"
                                        placeholder="Order ID" name="order_id">
						         <span id="order_id_error" style="color: red"></span>
                             </div>
                             <div class="col-md-4">
						          <label>Customer Name:</label>
                                  <input type="text" class="form-control form-control-user" id="customer_name"
                                         placeholder="Customer Name" name="customer_name">
						          <span id="customer_name_error" style="color: red"></span>
                             </div>
					         <div class="col-md-4">
						          <label>Quotation Number:</label>
                                  <input type="text" class="form-control form-control-user" id="quotation_number"
                                         placeholder="Quotation Number" name="quotation_number">
						          <span id="quotation_number_error" style="color: red"></span>
                             </div>					
                         </div>
						 <div class="row">
                            <div class="col-md-4">
					             <label>Service Name:</label>
                                  <input type="text" class="form-control form-control-user" id="service_name"
                                         placeholder="Sevice Name" name="service_name">
						          <span id="service_name_error" style="color: red"></span>
                             </div>
                             <div class="col-md-4">
						           <label>Price:</label>
                                 <input type="text" class="form-control form-control-user" id="service_price"
                                        placeholder="Service Price" name="service_price">
						         <span id="service_price_error" style="color: red"></span>
                             </div>
					         <div class="col-md-4">
						          <label>Employee Name:</label>
                                 <input type="text" class="form-control form-control-user" id="subcontractor_name"
                                        placeholder="Subcontractor Name" name="subcontractor_name">
						         <span id="subcontractor_Name_error" style="color: red"></span>
                             </div>					
                         </div>
						 <div class="row">
                            <div class="col-md-4">
					             <label>Job Start Date And Time:</label>
                                  <input type="datetime" class="form-control form-control-user" id="start_date"
                                         placeholder="Start Date" name="Start_date">
						          <span id="Start_date_error" style="color: red"></span>
                             </div>
                             <div class="col-md-4">
						           <label>Job Finish Date And Time:</label>
                                 <input type="datetime" class="form-control form-control-user" id="finish_date"
                                        placeholder="Finish Date" name="finish_date">
						         <span id="finish_date_error" style="color: red"></span>
                             </div>				
                         </div>
    </div>
    
  </div>
  </div>
                </div>
                </div>				
            </form>
		</div>
	</div>
</div>

@section('javascript')

<script>
 $(document).ready(function () {
  $('#dtBasicExample').DataTable();
  $('.dataTables_length').addClass('bs-select');
});

$('body').on('click','#assigning_order',function()
	{
	var id=$(this).attr('rel');
	//alert(id);
	  $.ajax({
    url: "{{ route('assign_details') }}",
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
        $('#hideDate').hide();
        $('#showData').html(data);
        $('#assigningModal').modal('show');		
		//alert("Pass")	
    },
    error: function() 
	{
        //$('#user_loder').hide();
        alert("Fail")
    }
    })
	});
	
	$('body').on('click','#subcontractordetails_button',function() {
	   //alert ('hello');
        var form = $('#Assigning_details_form')[0];
        var data = new FormData(form);

        toastr.options = {
            "closeButton": true,
            "newestOnTop": true,
            "positionClass": "toast-top-right"
        };
        $.ajax({
            url: "{{ route('save_assigncontractor_details') }}",
			headers: {'X-CSRF-TOKEN': $('input[name="_token"]').val()},
            type: 'post',
            data: data,
            processData: false,
            contentType: false,
            cache: false,
            dataType: 'json',
            beforeSend: function() {
                $('#user_loder').show()
            },
            success: function(data) {
                if (data.status == 'success') {
                    toastr.success(data.message);
                }
				else{
					toastr.error();
				}
				window.location.href="{{ route('order-index') }}";
                //$('#broker_details_form').trigger("reset");
                //$('#user_loder').hide()
            },
            error: function(error) {
                //$('#user_loder').hide()
                var err = error.responseJSON.errors;
                if (error.status == 422) {
                    toastr.error("Error");
                    $('#order_id_error').html(err.order_id)
                    $('#customer_name_error').html(err.customer_name)
                    $('#quotation_number_error').html(err.quotation_number)
                    $('#service_name_error').html(err.service_name)
                    $('#service_price_error').html(err.service_price)
                    $('#subcontractor_Name_error').html(err.subcontractor_Name)
                    $('#start_date_error').html(err.start_date)
                    $('#job_finish_date_error').html(err.job_finish_date)
                    if (err.order_id) {
                        toastr.error(err.order_id);
                    }
					if (err.customer_name) {
                        toastr.error(err.customer_name);
                    }
					if (err.quotation_number) {
                        toastr.error(err.quotation_number);
                    }
					if (err.service_name) {
                        toastr.error(err.service_name);
                    }
					if (err.service_price) {
                        toastr.error(err.service_price);
                    }
					if (err.subcontractor_Name) {
                        toastr.error(err.subcontractor_Name);
                    }
					if (err.start_date) {
                        toastr.error(err.Start_date);
                    }
					if (err.job_finish_date) {
                        toastr.error(err.job_finish_date);
                    }
                }
                console.log(error)
            }
        })
    });
	
	$('#Assigning_details_form :input').click(function() {
        $('#order_id_error').html('')
        $('#customer_name_error').html('')
        $('#quotation_number_error').html('')
        $('#service_name_error').html('')
        $('#service_price_error').html('')
        $('#subcontractor_Name_error').html('')
        $('#start_date_error').html('')
        $('#job_finish_date_error').html('')
    })
	
		$('body').on('click','#employee_details_button',function() {
	   //alert ('hello');
        var form = $('.assign_employee_details')[0];
        var data = new FormData(form);

        toastr.options = {
            "closeButton": true,
            "newestOnTop": true,
            "positionClass": "toast-top-right"
        };
        $.ajax({
            url: "{{ route('save_assignemployee_details') }}",
			headers: {'X-CSRF-TOKEN': $('input[name="_token"]').val()},
            type: 'post',
            data: data,
            processData: false,
            contentType: false,
            cache: false,
            dataType: 'json',
            beforeSend: function() {
                $('#user_loder').show()
            },
            success: function(data) {
                if (data.status == 'success') {
                    toastr.success(data.message);
                }
				else{
					toastr.error();
				}
				window.location.href="{{ route('order-index') }}";
                //$('#broker_details_form').trigger("reset");
                //$('#user_loder').hide()
            },
            error: function(error) {
                //$('#user_loder').hide()
                var err = error.responseJSON.errors;
                if (error.status == 422) {
                    toastr.error("Error");
                    $('#employee_order_id_error').html(err.employee_order_id)
                    $('#employee_customer_name_error').html(err.employee_customer_name)
                    $('#employee_quotation_number_error').html(err.employee_quotation_number)
                    $('#employee_service_name_error').html(employee_service_name)
                    $('#employee_service_price').html(err.employee_service_price)
                    $('#employee_Name_error').html(err.employee_Name)
                    $('#employee_start_date_error').html(err.employee_start_date)
                    $('#employee_finish_date_error').html(err.employee_finish_date)
                    if (err.employee_order_id) {
                        toastr.error(err.employee_order_id);
                    }
					if (err.employee_customer_name) {
                        toastr.error(err.employee_customer_name);
                    }
					if (err.employee_quotation_number) {
                        toastr.error(err.employee_quotation_number);
                    }
					if (err.employee_service_name) {
                        toastr.error(err.employee_service_name);
                    }
					if (err.employee_service_price) {
                        toastr.error(employee_service_price);
                    }
					if (err.employee_Name) {
                        toastr.error(err.employee_Name);
                    }
					if (err.employee_start_date) {
                        toastr.error(err.employee_start_date);
                    }
					if (err.employee_finish_date) {
                        toastr.error(err.employee_finish_date);
                    }
                }
                console.log(error)
            }
        })
    });
	
	$('.assign_employee_details :input').click(function() {
        $('#employee_order_id_error').html('')
        $('#employee_customer_name_error').html('')
        $('#employee_quotation_number_error').html('')
        $('#employee_service_name_error').html('')
        $('#employee_service_price').html('')
        $('#employee_Name_error').html('')
        $('#employee_start_date_error').html('')
        $('#employee_finish_date_error').html('')
    })
</script>

@endsection

