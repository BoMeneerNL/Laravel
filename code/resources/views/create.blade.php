<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="{{ asset('css/app.css') }}" rel="stylesheet" type="text/css" >
    <link href="{{ asset('css/app1.css') }}" rel="stylesheet">
    <title>Adding a new Anime</title>
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">

</head>
<body>
<div id="pagewrapper" class="grid justify-center w-full">
    <div class="form-group w-full">
        <label for="AnimeNamez">Naam van de anime</label>
        <input type="text" class="form-control" id="AnimeName" aria-describedby="emailHelp" placeholder="Enter heres the anime name">
    </div>
    <div class="form-group">
        <label for="AnimeNameEN">Engelse naam voor de anime</label>
        <input type="text" class="form-control w-auto" id="AnimeNameEN" placeholder="Enter here the english name of the anime">
    </div>
    <div class="form-group">
        <label for="AnimeNameJP">Naam van de anime in Kanji en/of Hiragana</label>
        <input type="text" class="form-control w-auto" id="AnimeNameJP" placeholder="Enter here the name of the anime in Kanji and/or Hiragana">
    </div>
    <div class="form-group">
        <label for="Dates">Uigezonden van-tot (Format: YYYY-YYYY)</label>
        <input type="text" class="form-control w-auto" id="Dates" placeholder="Enter here the begin and end year of broadcasting of the anime">
    </div>
    <div class="form-check"></div>
    <button type="submit" onclick="Create()" class="btn btn-primary">Add the new anime</button>
</div>
<script>
    function Create(){let b=document.getElementById("AnimeName").value,c=document.getElementById("AnimeNameEN").value,d=document.getElementById("AnimeNameJP").value,a=document.getElementById("Dates").value;fetch("http://localhost:8000/ccdat/"+b+"/"+c+"/"+d+"/"+(a=parseInt(a.replace("-","")))).then(()=>{window.location.replace("/")})}

</script>
</body>
