<?php

namespace App\Http\Controllers;

use Illuminate\Contracts\Foundation\Application;
use Illuminate\Contracts\View\Factory;
use Illuminate\Contracts\View\View;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\DB;

class AnimeController extends Controller
{
    public static function cedit($animeid,$name,$nameEN,$nameJPS,$dates){
        DB::table('animes')->where('animeid', $animeid)->update(['AnimeNaam' => $name, 'AnimeNameEnglish' => $nameEN, 'AnimeNameJPSymbols' => $nameJPS, 'Uitgavejaar' => $dates]);
    }

    public function index(): Factory|View|Application
    {
        $animes = DB::select("SELECT * FROM animes");
        return view('animelist', ['animes' => $animes]);
    }
    public static function destroy($animeid)
    {
        DB::delete("DELETE FROM animes WHERE animeid = ? LIMIT 1", [$animeid]);
    }
    public static function edit($animeid): Factory|View|Application
    {
        $anime = DB::select("SELECT * FROM animes WHERE animeid = ? LIMIT 1", [$animeid]);
        return view('edit', ['anime' => $anime[0]]);
    }
    public static function create(): Factory|View|Application
    {
        return view('create');
    }
    public static function ccreate($name,$nameEN,$nameJPS,$dates){
        DB::insert("INSERT INTO animes (AnimeNaam, AnimeNameEnglish, AnimeNameJPSymbols, Uitgavejaar) VALUES (?, ?, ?, ?)", [$name, $nameEN, $nameJPS, $dates]);
    }
}
