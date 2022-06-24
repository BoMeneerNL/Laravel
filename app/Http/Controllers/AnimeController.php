<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\DB;

class AnimeController extends Controller
{
    public function index()
    {
        $animes = DB::select("SELECT * FROM animes");
        return view('animelist', ['animes' => $animes]);
    }
    public function destroy($animeid)
    {
        DB::statement("DELETE FROM animes WHERE animeid = $animeid");
    }
    public function edit($animeid)
    {
        DB::table('animes')->where('animeid', $animeid)->update(['title' => 'test']);
    }
}
