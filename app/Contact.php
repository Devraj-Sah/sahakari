<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Models\Navigation;

class Contact extends Model
{
    public function getJob(){
        return $this->belongsTo(Job::class,'job_id','id');
    }

}
