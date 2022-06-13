<?php

namespace App\Http\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class DietRequest extends Model
{
    
    use HasFactory;

    use SoftDeletes;

    protected $dates = ['deleted_at'];
    protected $table = 'diet_requests';
    protected $hidden = ['created_at', 'updated_at'];

    public function details(){
        return $this->hasOne(DietRequestDetail::class,'iddiet','id');
    }

    public function journey(){
        return $this->hasOne(Journey::class,'id', 'idjourney');
    }

    public function service(){
        return $this->hasOne(Service::class,'id', 'idapplicant_service');
    }

    public function user(){
        return $this->hasOne(User::class,'id', 'idapplicant');
    }
}
