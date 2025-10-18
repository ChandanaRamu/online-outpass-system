<?php
ob_start();
session_start();
?>
<html>
    <body>


<div id='myModal' class='modal'>;

                                   
                                    <div class='modal-content'>
                                    <span class='close'>&times;</span>
                                    <table>
                                        
                                       <tr>
                                            <td><b>Name:-</b></td>
                                            <td>Y.Pavan Kumar</td>
                                        </tr>
                                        <tr>
                                            <td><b>ID:-</b></td>
                                            <td>R170865</td>
                                        </tr>
                                        <tr>
                                            <td><b>Phone Number:-</b></td>
                                            <td>9121920760</td>
                                         </tr>
                                    </table>

                                    </div>
                                
                               </div>
                     
                               </body>
                               <script>                
var modal = document.getElementById("myModal");

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks on the button, open the modal
btn.onclick = function() {
modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
modal.style.display = "none";
window.location.href="http://localhost/online-outpass-system/php/pending.php";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
if (event.target == modal) {
    modal.style.display = "none";
    window.location.href="http://localhost/online-outpass-system/php/pending.php";
}
</script>
</html>