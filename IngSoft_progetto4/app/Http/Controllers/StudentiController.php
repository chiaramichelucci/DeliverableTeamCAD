<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class StudentiController extends Controller
{
    //Controller per la gestione delle richieste provenienti da studenti

    public function stampaCalendario($id)
    {
        
    }

    public function stampaDocenti()
    {
        $docentiList = DB::table('docente')->select('cognome', 'nome', 'orario_ricevimento', 'giorno_ricevimento')->get();
        return view('docenti',['docentiList' => $docentiList]);
    }

    public function stampaListaCorsi($id)
    {
        
    }

    public function sceltaCorsi($id)
    {

    }

    public function addEvento()
    {
        
    }

    public function varEvento()
    {
        
    }

    public function deleteEvento($id)
    {
        
    }


}