<?php
if (isset($_POST['submit_admin'])) {
    add_admin();
}

    function add_admin(){
        require 'config.php';
        $fname=$_POST['fname'];
        $lname=$_POST['lname'];
        $email=$_POST['email'];
        $pnumber=$_POST['phone_no'];
        $pass=$_POST['newpassword'];

        // first check the database to make sure 
        // a user does not already exist with the same username and/or email
        $user_check_query = "SELECT * FROM `details` WHERE `Email`='$email' LIMIT 1";
        $result = mysqli_query($con, $user_check_query);
        $user = mysqli_fetch_assoc($result);

        if ($user) {//if user exist
            if ($user['Email']==$email) {//if user exists
                ?>
                    <script>
                        window.alert("The user email already exists")
                    </script>
           <?php }
        }else{
            $password=md5($pass);
            $query = "INSERT INTO `details`( `FirstName`, `LastName`, `Email`, `phone_no`,`Password`, `Type`) VALUES ('$fname','$lname','$email','$pnumber','$password','admin')";
  	        mysqli_query($con, $query);
              ?>
              <script>
                  window.alert("Admin has been added")
              </script>
       <?php }
    }
    ?>

    <?php 
    if (isset($_POST['submit_new_password'])) {
        change_pass();
    }
    function change_pass(){
        require 'config.php';
        $newpass=$_POST['newpassword'];
        $newpass1=md5($newpass);
        $newid=$_SESSION['id'];
        $q="UPDATE `details` set `Password`='$newpass1' where `ID`='$newid'";
        if (mysqli_query($con,$q)) {
            ?>
            <script>
                window.alert("Password has been updated, Login again!")
            </script>
        <?php
      header("Location:../login.php");
  }else
  ?> 
    <script>
        window.alert("oppsii, we ran into a problem updating the password, kindly try again")
    </script>
  <?php  }
   ?>
