<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
</head>
<body>
<h2>Hey !</h2> <br><br>

You received an Career Enquiry email from : {{ $name }} <br><br>

User details: <br><br>

Name:  {{ $name }}<br>
Email:  {{ $email }}<br>
Phone:  {{ $phone }}<br>
Position: {{ $position }} <br>
File Name: {{ $file }}<br>
Subject:  {{ $career_subject }}<br>
Message:  {!! $career_message !!}<br><br>

Thanks
</body>
</html>