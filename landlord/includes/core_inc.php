<?php

    if (isset($_POST['submit_update'])) {
        save_profile();
    }

    function save_profile(){
        require 'config.php';
        $user_id=$_SESSION['id'];
        $fname=$_POST['fname'];
        $lname=$_POST['lname'];
        $phone=$_POST['phone'];
        $email=$_POST['email'];
        $about=$_POST['about'];
        

        $qu="UPDATE `details` SET `FirstName`='$fname',`LastName`='$lname',`Email`='$email',`phone_no`='$phone',`about_me`='$about' WHERE `ID`='$user_id'";
        
        if (mysqli_query($con,$qu)) {
            header("Location:dashboard.php");
            
            
        }else{
            header("Location:dashboard.php");
            
        }

    }

?>

<?php 

    function getImageExt($imgtype){
        if(empty($imgtype))
            return false;
        switch($imgtype){
            case 'image/bmp': return '.bmp';
            case 'image/gif': return '.gif';
            case 'image/jfif': return '.jfif';
            case 'image/png': return '.png';
            case 'image/PNG': return '.PNG';
            case 'image/jpeg': return '.jpeg';
            case 'image/JPEG': return '.JPEG';
            case 'video/mp4': return '.mp4';
                break;
            default: return false;
        }
    }

?>

<?php 

if (isset($_POST['submit_property'])) {
    upload_hos();
}

function upload_hos(){
    require 'config.php';
    $user_id=$_SESSION['id'];
    $hos_title=$_POST['title'];
    $hos_type=$_POST['hos_type'];
    $hos_price=$_POST['price'];
    $hos_des=$_POST['description'];
    $hos_location=$_POST['location'];
    $hos_fri_add=$_POST['address'];
    $hos_services=$_POST['services'];
    $hos_rul=$_POST['rules'];

    



if (!empty($_FILES["feat_image"]["name"])) {
    $feat_file_name = $_FILES["feat_image"]["name"];
    $feat_temp_name = $_FILES["feat_image"]["tmp_name"];
    $feat_imgtype = $_FILES["feat_image"]["type"];
    $feat_ext = getImageExt($feat_imgtype);
    $feat_imagename = $hos_title . $feat_ext;
    $targetPathFeatImg = "images/uploads/" . $feat_imagename;

    if (move_uploaded_file($feat_temp_name, $targetPathFeatImg)) {
        

          

          $quer="INSERT INTO `hos_details`(`agent_id`, `hos_name`, `hos_type`, `price`, `description`, `ft_img`, `location`, `friendly_add`, `services`, `rules`) VALUES ('$user_id','$hos_title','$hos_type','$hos_price','$hos_des','$targetPathFeatImg','$hos_location','$hos_fri_add','$hos_services','$hos_rul')";

            if ($query_run = mysqli_query($con, $quer)) {
                

                
                    ?><script>
                        window.alert('Hostel Submitted Successfully, Wait For Approval');
                        
                    </script>
                    <?php } else {
                    ?>
                    <script>
                        window.alert('Opps! Something Went Wrong, check your inputs again');
                        
                    </script>
                    <?php
                }
            } else {
                ?>
                <script>
                    window.alert('Opps! Something Went Wrong In Uploading Image to Server');
                    
                </script>
                <?php
            }
        }

        $query2="SELECT * FROM `hos_details` WHERE `agent_id`=$user_id ORDER BY `ID` DESC LIMIT 1";
        $run=mysqli_query($con,$query2);
        $row=mysqli_fetch_assoc($run);
        $propID=$row['ID'];

        if (!empty($_FILES["images"]["name"])) {
            for ($i=0; $i < count($file_name=$_FILES["images"]["name"]); $i++) { 
                $temp_name=$_FILES["images"]["tmp_name"][$i];
                $file_name=$_FILES["images"]["name"][$i];
                $imgtype=$_FILES["images"]["type"][$i];
                $ext=getImageExt($imgtype);
                $imagename=$hos_title."_".$file_name;
                $target_path="images/uploads/".$imagename;

                if (move_uploaded_file($temp_name,$target_path)) {
                    $insert="INSERT INTO `img_table`(`hos_id`, `more_img`) VALUES ('$propID','$target_path')";
                    $query3=mysqli_query($con,$insert);
                    $query3;

                }//end for if move file
                else {
                    ?>  
                        <script>
                            window.alert("oh no they is an issue moving multiple images, ensure extensions are correct");
                        </script>
              <?php  }

            }// end for forloop

        } //end for multi image upload

}
?>

      
