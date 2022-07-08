 <form method="post" id="details_form">
			             <div class="card">
                             <div class="card-body">
				                 @csrf
			                     <div class="row">
                                     <div class="col-md-4">
					                     <label>Job Unique ID:</label>
                                         <input type="text" class="form-control form-control-user" id="job_unique_id" value="<?php echo $result[0]->job_unique_id;?>"
                                                placeholder="Job Unique ID" name="job_unique_id">
						                 <span id="job_unique_id_error" style="color: red"></span>
                                     </div>
                                     <div class="col-md-4">
						                  <label>Quotation Number:</label>
                                          <input type="text" class="form-control form-control-user" id="quotation_number" value="<?php echo $result[0]->quotation_number;?>"
                                                 placeholder="Quotation Number" name="quotation_number">
						                  <span id="quotation_number_error" style="color: red"></span>
                                     </div>
					                 <div class="col-md-4">
						                  <label>SubContractor Name:</label>
                                          <input type="text" class="form-control form-control-user" id="subcontractor_name" value="<?php echo $result[0]->subcontractor_name;?>"
                                                 placeholder="SubContractor Name" name="subcontractor_name">
						                  <span id="subcontractor_name_error" style="color: red"></span>
                                     </div>					
                                  </div>
						          <div class="row mt-2">
                                      <div class="col-md-4">
					                      <label>Customer Name:</label>
                                          <input type="text" class="form-control form-control-user" id="customer_name" value="<?php echo $result[0]->customer_name;?>"
                                                 placeholder="Customer Name" name="customer_name">
						                  <span id="service_name_error" style="color: red"></span>
                                      </div>
                                      <div class="col-md-4">
						                  <label>Service Name:</label>
                                          <input type="text" class="form-control form-control-user" id="service_name" value="<?php echo $result[0]->service_name;?>"
                                                 placeholder="Service Name" name="service_name">
						                  <span id="service_name_error" style="color: red"></span>
                                      </div>
					                  <div class="col-md-4">
						                  <label>Service Price:</label>
                                          <input type="text" class="form-control form-control-user" id="subcontractor_name" value="<?php echo $result[0]->subcontractor_name;?>"
                                                 placeholder="Subcontractor Name" name="subcontractor_name">
						                  <span id="subcontractor_Name_error" style="color: red"></span>
                                      </div>					
                                   </div>
						           <div class="row mt-2">
                                       <div class="col-md-4">
					                       <label>Order ID:</label>
                                           <input type="text" class="form-control form-control-user" id="order_id" value="<?php echo $result[0]->order_id;?>"
                                                  placeholder="Order ID" name="order_id">
						                   <span id="order_id_error" style="color: red"></span>
                                       </div>
                                       <div class="col-md-4">
						                   <label>Price:</label>
                                           <input type="text" class="form-control form-control-user" id="finish_date" value="<?php echo $result[0]->service_price;?>"
                                                  placeholder="Finish Date" name="finish_date">
						                   <span id="finish_date_error" style="color: red"></span>
                                       </div>				
                                    </div>
                                </div>
                           </div>
                      </div>
                  </div>				
             </form>