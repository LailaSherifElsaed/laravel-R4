<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Show Car</title>
</head>
<body>

    <h1>{{$car->title}}</h1>
    <p>Descrition:{{$car->description}}</p>
    <h5>Created at:{{$car->created_at}}</h5>
    <h5>Updated at:{{$car->updated_at}}</h5>
    <h5>{{$car->published ?"Published":"Not Published"}}</h5>
    <h5>Image:</h5>
    <img src="{{ asset('assets/images/' . $car->image) }}" alt="car" style="width: 200px;">
</body>
</html>