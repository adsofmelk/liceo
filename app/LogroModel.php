<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class LogroModel extends Model
{
	use SoftDeletes;
	
	protected $dates = ['deleted_at'];
	protected $table = 'logro';
	protected $primaryKey = 'idlogro';
	protected $fillable = [
			'detalle',
			'visibleenboletin',
			'grado_idgrado',
			'grado_idgrado',
	];
	protected $hidden = [];
	public $timestamps = true;
}
