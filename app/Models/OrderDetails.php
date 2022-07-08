<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OrderDetails extends Model
{
	
    use HasFactory;
	protected $table='order_details';
    protected $fillable = [
	    'order_unique_id',
        'quotation_unique_id',
        'customer_name',
        'status',
        'service_unique_id'
    ];
}