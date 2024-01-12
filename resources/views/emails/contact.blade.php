<!DOCTYPE html>
<html>
<head>
<title>Contact Form Submission</title>
</head>
<body>

<h1>Subject: {{$user->subject}}</h1>
<p>You have received an email from  : {{$user->name}}</p>
<p>Email : {{$user->email}}</p>
<p>Phone : {{$user->phone}}</p>
<p> {{$user->message}}</p>


</body>
</html>