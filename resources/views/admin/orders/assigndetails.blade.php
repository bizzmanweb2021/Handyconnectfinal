 <form method="post" class="assign_employee_details" id="Assigning_details_form">
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
	                    <input type="hidden" class="form-control form-control-user" id="order_id" value="<?php echo $assignDetails[0]['id'];?>"
                                        placeholder="Order ID" name="job_id">
					    <div class="row">
                            <div class="col-md-4">
					             <label>Order ID:</label>
                                 <input type="text" class="form-control form-control-user" id="order_id" value="<?php echo $assignDetails[0]['order_unique_id'];?>"
                                        placeholder="Order ID" name="order_id">
						         <span id="order_id_error" style="color: red"></span>
                             </div>
                             <div class="col-md-4">
						          <label>Customer Name:</label>
                                  <input type="text" class="form-control form-control-user" id="customer_name" value="<?php echo $assignDetails[0]['customer_name'];?>"
                                         placeholder="Customer Name" name="customer_name">
						          <span id="customer_name_error" style="color: red"></span>
                             </div>
					         <div class="col-md-4">
						          <label>Quotation Number:</label>
                                  <input type="text" class="form-control form-control-user" id="quotation_number" value="<?php echo $assignDetails[0]['quotation_unique_id'];?>"
                                         placeholder="Quotation Number" name="quotation_number">
						          <span id="quotation_number_error" style="color: red"></span>
                             </div>					
                         </div>
						 <div class="row">
                            <div class="col-md-4 mt-2">
					             <label>Service Name:</label>
                                  <input type="text" class="form-control form-control-user" id="service_name" value="<?php for($i=0; $i<count($assignDetails); $i++){ echo $assignDetails[$i]['service_unique_id']; }?>"
                                         placeholder="Sevice Name" name="service_name">
						          <span id="service_name_error" style="color: red"></span>
                             </div>
                             <div class="col-md-4 mt-2">
						           <label>Price:</label>
                                 <input type="text" class="form-control form-control-user" id="service_price" value="<?php for($i=0; $i<count($assignDetails); $i++){ echo $assignDetails[$i]['price']; }?>"
                                        placeholder="Service Price" name="service_price">
						         <span id="service_price_error" style="color: red"></span>
                             </div>
					         <div class="col-md-4 mt-2">
						          <label>Subcontractor Name:</label>
								  <select name="subcontractor_name" id="subcontractor_name" class="form-control form-control-user">
					                <option value="">--Select--</option>
						           <?php
								    foreach($data as $result)
								        {
							        ?>
                                    <option value="<?php echo $result->name;?>"><?php echo $result->name;?></option>
                                <?php
								}
								?>
					            </select>
						         <span id="subcontractor_Name_error" style="color: red"></span>
                             </div>					
                         </div>
						 <div class="row">
                            <div class="col-md-4 mt-2">
					             <label>Job Start Date:</label>
                                  <input type="datetime-local" class="form-control form-control-user" id="start_date"
                                         placeholder="Start Date" name="start_date">
						          <span id="start_date_error" style="color: red"></span>
                             </div>
							 <!-- div class="col-md-3 mt-2">
					             <label>Start Time:</label>
                                  <input type="time" class="form-control form-control-user" id="start_time"
                                         placeholder="Start Date" name="start_time">
						          <span id="start_time_error" style="color: red"></span>
                             </div -->
                             <div class="col-md-4 mt-2">
						           <label>Job Finish Date:</label>
                                 <input type="datetime-local" class="form-control form-control-user" id="job_finish_date"
                                        placeholder="Finish Date" name="job_finish_date">
						         <span id="job_finish_date_error" style="color: red"></span>
                             </div>
                             <!--div class="col-md-3 mt-2">
					             <label>Finish Time:</label>
                                  <input type="time" class="form-control form-control-user" id="finish_time"
                                         placeholder="Start Date" name="finish_time">
						          <span id="finish_date_error" style="color: red"></span>
                             </div -->							 
                         </div>
						 <div class="row">
                              <div class="col-sm-6 mb-3 mb-sm-0 mt-2">
				                   <button class="btn btn-primary px-3 mb-0" style="color:White;" id="subcontractordetails_button" type="button">Save</button>
					          </div>
				         </div>
                    </div>
                    <div id="menu1" class="container tab-pane fade"><br>
      <h3>Employee</h3>
					    <div class="row">
                            <div class="col-md-4">
					             <label>Order ID:</label>
                                 <input type="text" class="form-control form-control-user" id="employee_order_id" value="<?php echo $assignDetails[0]['order_unique_id'];?>"
                                        placeholder="Order ID" name="employee_order_id">
						         <span id="employee_order_id_error" style="color: red"></span>
                             </div>
                             <div class="col-md-4">
						          <label>Customer Name:</label>
                                  <input type="text" class="form-control form-control-user" id="employee_customer_name" value="<?php echo $assignDetails[0]['customer_name'];?>"
                                         placeholder="Customer Name" name="employee_customer_name">
						          <span id="employee_customer_name_error" style="color: red"></span>
                             </div>
					         <div class="col-md-4">
						          <label>Quotation Number:</label>
                                  <input type="text" class="form-control form-control-user" id="employee_quotation_number" value="<?php echo $assignDetails[0]['quotation_unique_id'];?>"
                                         placeholder="Quotation Number" name="employee_quotation_number">
						          <span id="employee_quotation_number_error" style="color: red"></span>
                             </div>					
                         </div>
						 <div class="row">
                            <div class="col-md-4">
					             <label>Service Name:</label>
                                  <input type="text" class="form-control form-control-user" id="employee_service_name" value="<?php for($i=0; $i<count($assignDetails); $i++){ echo $assignDetails[$i]['service_unique_id']; }?>"
                                         placeholder="Sevice Name" name="employee_service_name">
						          <span id="employee_service_name_error" style="color: red"></span>
                             </div>
                             <div class="col-md-4">
						           <label>Price:</label>
                                 <input type="text" class="form-control form-control-user" id="employee_service_price" value="<?php for($i=0; $i<count($assignDetails); $i++){ echo $assignDetails[$i]['price']; }?>"
                                        placeholder="Service Price" name="employee_service_price">
						         <span id="employee_service_price_error" style="color: red"></span>
                             </div>
					         <div class="col-md-4">
						          <label>Employee Name:</label>
                                 <select name="employee_name" id="employee_name" class="form-control form-control-user">
					                <option value="">--Select--</option>
						           <?php
								    foreach($data as $result)
								        {
							        ?>
                                    <option value="<?php echo $result->name;?>"><?php echo $result->name;?></option>
                                <?php
								}
								?>
					            </select>
						         <span id="employee_Name_error" style="color: red"></span>
                             </div>					
                         </div>
						 <div class="row">
                            <div class="col-md-4">
					             <label>Job Start Date And Time:</label>
                                  <input type="datetime-local" class="form-control form-control-user" id="employee_start_date"
                                         placeholder="Start Date" name="employee_start_date">
						          <span id="employee_start_date_error" style="color: red"></span>
                             </div>
                             <div class="col-md-4">
						           <label>Job Finish Date And Time:</label>
                                 <input type="datetime-local" class="form-control form-control-user" id="employee_finish_date"
                                        placeholder="Finish Date" name="employee_finish_date">
						         <span id="employee_finish_date_error" style="color: red"></span>
                             </div>				
                         </div>
						 <div class="row">
                              <div class="col-sm-6 mb-3 mb-sm-0 mt-2">
				                   <button class="btn btn-primary px-3 mb-0" style="color:White;" id="employee_details_button" type="button">Save</button>
					          </div>
				         </div>
                    </div>
					</div>
	</div>
   </div>
</form>   