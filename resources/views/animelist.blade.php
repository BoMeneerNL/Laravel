
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
<table class="table">
    <thead>
    <tr>
        <th scope="col">Animenaam Engels</th>
        <th scope="col">Animenaam Japans</th>
        <th scope="col">Last</th>
        <th scope="col">Handle</th>
    </tr>
    </thead>
    <tbody>
    @foreach($animes as $anime)
        <tr>
        <th scope="row">1</th>
        <td>{{$anime->AnimeNameJPSymbols}} ({{$anime->AnimeNaam}})</td>
        <td>Otto</td>
            <td><button onclick="@@method(AnimeController::destroy($anime->$AnimeID))">edit</button> <button>delete</button></td>
          </tr>
    @endforeach
    </tbody>
</table>
</body>
</html>
