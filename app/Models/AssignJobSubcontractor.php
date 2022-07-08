<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AssignJobSubcontractor extends Model
{
    use HasFactory;

    protected $fillable = ['job_unique_id','subcontractor_name','service_name','customer_name','order_id','status','order_id','quotation_number','service_price','start_date','start_time','job_finish_date','finish_time'];
}
