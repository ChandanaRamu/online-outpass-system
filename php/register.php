<?php
if(isset($_POST['sub']))
{
    session_start();
    $id = isset($_SESSION['id']) ? $_SESSION['id'] : '';
    $guardianName = $_POST['gname'] ?? '';
    $guardianNumber = $_POST['gnumber'] ?? '';
    $studentNumber = $_POST['snumber'] ?? '';
    $fromDate = $_POST['fromdate'] ?? '';
    $toDate = $_POST['todate'] ?? '';
    $reason = $_POST['reason'] ?? '';

    if(!is_numeric($guardianNumber) || !is_numeric($studentNumber))
    {
        echo "Registration Fail";
    }
    else
    {
        $con=new mysqli("localhost","root","","outpass");
        if($con->connect_error)
        {
            echo "there is a problem in connecting";
        }
        else
        {
            $ins="INSERT INTO `reg`(`id`, `gname`, `gnumber`, `snumber`, `fromdate`, `todate`, `reason`) VALUES ('$id','$guardianName',$guardianNumber,$studentNumber,'$fromDate','$toDate','$reason')";
            $quer=mysqli_query($con,$ins);
            if($quer){
                echo "Successfully registered";
            } else {
                echo "Insert failed: " . mysqli_error($con);
            }
        }
    }
}
?>