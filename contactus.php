<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=
    , initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="styles/style.css" media="all" />
</head>
<body>
    <form action="handle.php" method="post">
        <h3>Your name</h3>
        <br>
        <input type="text" name="name" placeholder="enter your name..">
        <br>
        <h3>Your E-mail address</h3>
        <br>
        <input type="text" name="email" placeholder="enter your email..">
        <br>
        <h3>Contact number</h3>
        <br>
        <input type="tel" name="phone" pattern="[0-9]{4}-[0-9]{3}-[0-9]{4}" placeholder="075*-***-****">
        <br>
        <h3>Your message</h3>
        <br>
        <input type="text" name="subject" placeholder="write your subject..">
        <br>
        <textarea name="message" cols="30" rows="10" placeholder="write your message.."></textarea>
        <br>
        <input type="submit" name="submit" value="Submit">
    </form>
</body>
</html>