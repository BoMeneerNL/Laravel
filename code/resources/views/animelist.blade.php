
<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="{{ asset('css/app.css') }}" rel="stylesheet" type="text/css" >
    <link href="{{ asset('css/app1.css') }}" rel="stylesheet">
    <title>Laravel</title>
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">

</head>
<body class="antialiased">
<table class="table w-auto">
    <thead>
    <tr>
        <th scope="col">Anime</th>
        <th scope="col">Animenaam Engels</th>
        <th scope="col">Animenaam Japans</th>
        <th scope="col">Uigezonden van-tot</th>
        <th scope="col">Acties</th>
    </tr>
    </thead>
    <tbody>
    @foreach($animes as $anime)
        <tr>
        <th scope="row">{{$anime->AnimeNaam}}</th>
        <td>{{$anime->AnimeNameEnglish}}</td>
        <td>{{$anime->AnimeNameJPSymbols}} ({{$anime->AnimeNaam}})</td>
        <td>{{substr($anime->Uitgavejaar,0,4)}} - {{substr($anime->Uitgavejaar,0,4)}}</td>
            <td><button onclick="">edit</button> <button onclick="Delete({{$anime->AnimeID}})">delete</button></td>
          </tr>
    @endforeach
    </tbody>
</table>
<script>
    function Delete(a){fetch("http://localhost:8000/anime/"+a+"/delete").then(()=>{window.location.reload()})}
</script>
</body>
</html>
