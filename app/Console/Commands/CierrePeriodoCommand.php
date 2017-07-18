<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use DB;

class CierrePeriodoCommand extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'cierre:periodo';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Cierre del periodo actual';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        $this->calcularNotas();
    }
    
    
    public function calcularNotas(){
    	$idanioescolar = \App\ParametrosModel::where('key','=','idanioescolar')->first()->value;
    	$idperiodo = \App\ParametrosModel::where('key','=','idperiodo')->first()->value;
    	
    	DB::select('call preCierrePeriodo(?,?)',[
    			$idperiodo,$idanioescolar,
    		]);
    	
    }
    
    
}
