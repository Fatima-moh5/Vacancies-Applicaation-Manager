<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;


class Setting extends Model
{
    //use HasFactory;
    protected $fillable = ['regret', 'thank'];
    protected $table = 'setting';

    public function getSetting(){
        return self::where('id', '=', 1)->first();
    }
}
