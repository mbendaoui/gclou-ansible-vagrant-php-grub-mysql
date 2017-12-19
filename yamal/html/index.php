<html>
<body>



<?php


$db = new PDO('mysql:host=localhost;dbname=kth-ethical', 'admin', 'admin');
$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$db->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);


 $email =$_POST['email'];
 $mypassword = $_POST['password'];


if (isset($_POST['submit']))  {

  if (!empty($email) && !empty($mypassword))
{


$sql = "SELECT * FROM student  WHERE email_student = '$email' and pass_student = '$mypassword'";

 $stmt = $db->prepare("SELECT * FROM student  WHERE  email_student=:em AND  pass_student=:pass  LIMIT 1");
          $stmt->execute(array(':em'=>$email, ':pass'=>$mypassword));
          $userRow=$stmt->fetch(PDO::FETCH_ASSOC);
        echo "eeeeeeeee".$stmt->rowCount();

       //   echo $stmt->rowCount() ;
//      {   header("location: welcome.php");
  //    }else {echo "Your Login Name or Password is invalid";}


                      }

}
?>







<img src="logo.gif" align="left">

<form method="post" action="index.php">
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <table border="1" align="right" cellpadding="2" id="tab1">
    <caption>
      Student Login
       </caption>
    <tr>
      <td><label for="email">Email @abc.se </label></td>
      <td><input type="text" name="email" cols="45" rows="5" tabindex="2"/></td>
    </tr>
    <tr>
      <td><label for="password">Password</label></td>
      <td><input type="password" name="password" cols="45" rows="5" tabindex="2"></td>
    </tr>
    <tr>
      <td colspan="2" align="center"><input name="submit" type="submit" value="Login" /></td>
    </tr>
  </table>
</form>


<form method="get" action="index.php" >
<label>Change languages
<select name="file">

  <option value="anglais.php">Anglais</option>
  <option value="francais.php">Francais</option>
  <option value="swedish.php">swedish</option>
</select>
</label>
<input type="submit" name="bouton2" value="Submit">
</form>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>

<div>
<?php


$file = $_GET['file'];



 if(isset($file))
 {
include("$file");
 }
 else
 {
include("anglais.php");
 }
?></div>
<p>&nbsp;</p>
</body>
</html>
