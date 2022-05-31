<link rel="stylesheet" type="text/css" href="styles/style.css" media="all" />
<?php
if(isset($post['submit']))
{
    if(empty($_POST['name']) || empty($_POST['email']) || empty($_POST['phone']) || empty($_POST['subject']) || empty($_POST['message']))
    {
        echo "<script>alert('Please fill the form')</script>";
       
    }
    else
    {
        $contact_name=$_POST['name'];
        $contact_email=$_POST['email'];
        $contact_phone=$_POST['phone'];
        $contact_subject=$_POST['subject'];
        $contact_message=$_POST['message'];
        $contact_message=wordwrap($contact_message,70);
        
        mail($contact_email,$contact_subject,$contact_message);
        
        echo "<br>;";
    }
    echo "<script>alert('dear '.$contact_name.'mail sent successfully')</script>";
}

//header('location: index.php');
?>
<a href="index.php">Go back to main page.</a>
<br>
<a href="contactus.php">Go back to submit another form.</a>