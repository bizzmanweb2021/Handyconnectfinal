<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\OrderDetails;
use App\Models\SubContractor;
use App\Models\AssignJobSubcontractor;
use App\Models\Employee;
use App\Models\Service;
use Illuminate\Support\Facades\DB;
class AdminOrderController extends Controller
{
     
    public function index()
    {
        $data=OrderDetails::get();
		//echo '<pre>'; print_r($data);die;
		foreach($data as $result){
		$serviceId= (explode(",",$result->service_unique_id));
		//echo '<pre>'; print_r($serviceId);die;
		$serviceDetails= Service::select('*')
		                        ->where('id',$serviceId)
								->get();
								//echo '<pre>'; print_r($serviceDetails);die;
		$details['arr'][]= array(
		'id' => $result->id,
		'order_unique_id' => $result->order_unique_id,
		'quotation_unique_id' => $result->quotation_unique_id,
		'customer_name' => $result->customer_name,
		'status' => $result->status,
		'price' => $serviceDetails[0]->price,
		'service_unique_id' => $serviceDetails[0]->service_name,
		);
		//echo '<pre>'; print_r($details);die;
		
		}
		return view('admin.orders.user-orders',$details);
        
    }
	
	Public function assign_details()
	{
		//echo 'Hello';
		$data= OrderDetails::select('*')
		                             ->where('id',$_GET['id'])
									 ->get();
						//echo '<pre>'; print_r($data);die;
	    $serviceId[]= (explode(",",$data[0]->service_unique_id));
		//echo '<pre>'; print_r($serviceId);die;
		for($i=0; $i<count($serviceId[0]); $i++)
		{
			//echo $i;
		$serviceDetails= Service::select('*')
		                        ->where('id',$serviceId[0][$i])
								->get();
		//echo '<pre>'; print_r($serviceDetails);die;
		$info['assignDetails'][]= array(
		'id' => $data[0]->id,
		'order_unique_id' => $data[0]->order_unique_id,
		'quotation_unique_id' => $data[0]->quotation_unique_id,
		'customer_name' => $data[0]->customer_name,
		'price' => $serviceDetails[0]->price,
		'service_unique_id' => $serviceDetails[0]->service_name,
		);
		}
		//echo '<pre>'; print_r($serviceName);die;
		$subcontractor['data']= SubContractor::get();
		$employee['data']= Employee::get();
		//echo '<pre>'; print_r($subcontractor);die;
		return view('admin.orders.assigndetails',$info,$employee);
		
	}
	
	public Function save_assigncontractor_details(Request $request)
	{
		//echo '<pre>'; print_r($request->all());die;
		$subcontractor_data = $request->validate([
			'order_id'     => ['required'],
            'customer_name'      => ['required'],
            'quotation_number'        => ['required','string', 'max:255'],
            'service_name'           => ['required','string', 'max:255'],
            'service_price'        => ['required','string', 'max:255'],
            'subcontractor_name'=> ['required','string', 'max:255'],
            'start_date'  => ['required','string', 'max:255'],
            //'start_time'  => ['required'],
            'job_finish_date'  => ['required'],
            //'finish_time'  => ['required']
        ], [
		    'order_id.required'         => 'Please Enter Order ID',
            'customer_name.required'    => 'Please Enter Customer Name',
            'quotation_number.required' => 'Please Enter Quotation Number',
            'service_name.required'     => 'Please Enter Service Name',
            'service_price.required'    => 'Please Enter Service Price',
            'subcontractor_name.required' => 'Please Select SubContractor Name',
            'start_date.required'       => 'Please Select Job Start Date',
            //'start_time.required'       => 'Please Select Job Start Time',
            'job_finish_date.required'  => 'Please Select Job Finish Date And Time',
            //'finish_time.required'      => 'Please Select Job Finish Time',
        ]);
		$unique_id = AssignJobSubcontractor::orderBy('id', 'desc')->first();
           $number = str_replace('JOB', '', $unique_id ? $unique_id->job_unique_id  : 0);
           if ($number == 0) {
           $number = 'JOB0000001';
           } else {
            $number = "JOB" . sprintf("%07d", (int)$number + 1);
           }
		$subcontractor_data['type']= 'SubContractor';
		$subcontractor_data['status']= 1;
		$subcontractor_data['job_unique_id']= $number;
		//echo '<pre>'; print_r($subcontractor_data);die;
		$data= AssignJobSubcontractor::insert($subcontractor_data);
		$update = OrderDetails::where('id',$_POST['job_id'])->update(['status' => 1]);
		echo json_encode(['status' => 'success', 'message' => 'Job Details Succesfully Submitted']);
		
	}
	
	public function save_assignemployee_details(Request $request)
	{
			$employee_data = $request->validate([
			'employee_order_id'     => ['required'],
            'employee_customer_name'      => ['required'],
            'employee_quotation_number'        => ['required','string', 'max:255'],
            'employee_service_name'           => ['required','string', 'max:255'],
            'employee_service_price'        => ['required','string', 'max:255'],
            'employee_name'=> ['required','string', 'max:255'],
            'employee_start_date'  => ['required','string', 'max:255'],
            //'start_time'  => ['required'],
            'employee_finish_date'  => ['required'],
            //'finish_time'  => ['required']
        ], [
		    'employee_order_id.required'         => 'Please Enter Order ID',
            'employee_customer_name.required'    => 'Please Enter Customer Name',
            'employee_quotation_number.required' => 'Please Enter Quotation Number',
            'employee_service_name.required'     => 'Please Enter Service Name',
            'employee_service_price.required'    => 'Please Enter Service Price',
            'employee_name.required' => 'Please Select SubContractor Name',
            'employee_start_date.required'       => 'Please Select Job Start Date',
            //'start_time.required'       => 'Please Select Job Start Time',
            'employee_finish_date.required'  => 'Please Select Job Finish Date And Time',
            //'finish_time.required'      => 'Please Select Job Finish Time',
        ]);
		$unique_id = AssignJobSubcontractor::orderBy('id', 'desc')->first();
           $number = str_replace('JOB', '', $unique_id ? $unique_id->job_unique_id  : 0);
           if ($number == 0) {
           $number = 'JOB0000001';
           } else {
            $number = "JOB" . sprintf("%07d", (int)$number + 1);
           }
		$employee_data['type']= 'Employee';
		$employee_data['status']= 1;
		$employee_data['job_unique_id']= $number;
		//echo '<pre>'; print_r($employee_data);die;
		$employeeJobDetails= array(
		  'job_unique_id' => $employee_data['job_unique_id'],
		  'quotation_number' => $employee_data['employee_quotation_number'],
		  'subcontractor_name' => $employee_data['employee_name'],
		  'customer_name' => $employee_data['employee_customer_name'],
		  'service_name' => $employee_data['employee_service_name'],
		  'service_price' => $employee_data['employee_service_price'],
		  'order_id' => $employee_data['employee_order_id'],
		  'status' => $employee_data['status'],
		  'type' => $employee_data['type'],
		  'start_date' => $employee_data['employee_start_date'],
		  'job_finish_date' => $employee_data['employee_finish_date'],
		);
		$data= AssignJobSubcontractor::insert($employeeJobDetails);
		$update = OrderDetails::where('id',$_POST['job_id'])->update(['status' => 1]);
		echo json_encode(['status' => 'success', 'message' => 'Job Details Succesfully Submitted']);
		
		
		
	}

    
    public function status($status)
    {
        $orders = DB::table('orders')
        ->join('services','services.id','=','orders.service_unique_id') 
        ->join('interior_quotation','interior_quotation.quotation_number', 'orders.quotation_unique_id')
        ->join('customers','customers.customer_unique_id', 'orders.customer_unique_id')
        ->where('order_status','=',$status)->get(); 

        echo json_encode($orders);
    }
 
    public function store(Request $request)
    {
         
    }

     
    public function approve($id)
    {
        $data = [
            'order_status'=> 1,
        ];
        $update = DB::table('orders')->where('order_id','=', $id)->update($data);
        if($update){
            return true;
        } else {
            return false;
        }
         
    }

    public function deapprove($id)
    {
        $data = [
            'order_status'=> 4,
        ];
        $update = DB::table('orders')->where('order_id','=', $id)->update($data);
        if($update){
            return true;
        } else {
            return false;
        }
         
    }
 
    public function edit($id)
    {
        //
    }

    
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
