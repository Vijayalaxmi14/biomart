<?php 
include("header.php");
if(isset($_POST['submit']))
{
	if(isset($_SESSION['sellerid']))
	{
		$sql = "UPDATE worker_request SET seller_status='$_POST[sellerstatus]'";
		if($_POST['sellercomment'] != "")
		{
			$sql = $sql . ", seller_comment= '". date("d-M-Y h:i:s") ." - $_POST[sellercomment] \n $_POST[sellerallcomment]'";
		}
		$sql = $sql . " WHERE worker_request_id='$_GET[viewid]'";
		if(!$qsql = mysqli_query($con,$sql))
		{
			echo mysqli_error($con);
		}
		else
		{
			echo "<script>alert('Work Request Updated Successfully..');</script>";
		}
	}
	
	if(isset($_SESSION['workerid']))
	{
		$sql = "UPDATE worker_request SET worker_status='$_POST[workerstatus]'";
		if($_POST['workercomment'] != "")
		{
			$sql = $sql . ", worker_comment= '". date("d-M-Y h:i:s") ." - $_POST[workercomment] \n $_POST[workerallcomment]'";
		}
		$sql = $sql . " WHERE worker_request_id='$_GET[viewid]'";
		if(!$qsql = mysqli_query($con,$sql))
		{
			echo mysqli_error($con);
		}
		else
		{
			echo "<script>alert('Request Updated Successfully..');</script>";
		}
		
$sqlworker_request = "SELECT * FROM worker_request WHERE worker_request_id='$_GET[viewid]'";
$qsqlworker_request = mysqli_query($con,$sqlworker_request);
$rsworker_request = mysqli_fetch_array($qsqlworker_request);
		
$sqlseller = "SELECT * FROM seller WHERE seller_id='$rsworker_request[seller_id]'";
$qsqlseller = mysqli_query($con,$sqlseller);
$rsseller = mysqli_fetch_array($qsqlseller);
		
$sqlworker = "SELECT * FROM worker WHERE worker_id='$rsworker_request[worker_id]'";
$qsqlworker = mysqli_query($con,$sqlworker);
$rsworker = mysqli_fetch_array($qsqlworker);

//$sqlworkerrequestrec = "SELECT * from worker_request WHERE ((from_date ='$_POST[fromdate]') AND (to_date =  '$_POST[tilldate]' )) AND worker_id='$_SESSION[workerid]' AND  worker_request_id != '$_GET[viewid]'	";
//$qsqlworkerrequest = mysqli_query($con,$sqlworkerrequestrec);
//while($rslworkerrequest = mysqli_fetch_array($qsqlworkerrequest))
{
	//###################################################
	//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
	//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
	include("smsapi.php");
	if($smsstatus == "Enabled")
	{
		$mobno=$rsseller['mobile_no'];
		$msgs= "Your request " . $_POST['workerstatus'] . " by $rsworker[name] for $rsworker_request[task] from $rsworker_request[from_date] to  $rsworker_request[to_date] ..";
		$msg= str_replace(" ","%20",$msgs);
		$ch = curl_init();
		curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Length: 0'));
		curl_setopt($ch,CURLOPT_URL,  "https://www.smsgatewayhub.com/api/mt/SendSMS?APIKey=" . $smsapi . "&senderid=" . $senderid ."&channel=2&DCS=0&flashsms=0&number=$mobno&text=$msg&route=21");
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
		curl_setopt($ch, CURLOPT_POST, 1);
		$buffer = curl_exec($ch);
		if(empty ($buffer))
		{
			//echo " buffer is empty ";
		}
		else
		{
			//echo $buffer; 
		}
		curl_close($ch);
	}
	//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
	//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
	//###################################################	
}
	}	
}
?>
  <main id="main">


    <!-- ======= Cta Section ======= -->
    <section id="cta" class="cta">
      <div class="container">

        <div class="text-center" data-aos="zoom-in">
		<br><br>
          <h3>View Worker Request detail</h3>
        </div>

      </div>
    </section><!-- End Cta Section -->

<?php
							  $sql = "SELECT * FROM worker_request WHERE worker_request_id='$_GET[viewid]'";
							  $qsql = mysqli_query($con,$sql);
							  $rs = mysqli_fetch_array($qsql);
							  

								  $sqlstate = "SELECT * FROM state WHERE state_id='$rs[state_id]'";
								  $qsqlstate = mysqli_query($con,$sqlstate);
								  $rsstate = mysqli_fetch_array($qsqlstate);								  

								  $sqlcity = "SELECT * FROM city WHERE city_id='$rs[city_id]'";
								  $qsqlcity = mysqli_query($con,$sqlcity);
								  $rscity = mysqli_fetch_array($qsqlcity);	
								  							  
                                  $sqlseller = "SELECT * FROM seller WHERE seller_id='$rs[seller_id]'";
								  $qsqlseller = mysqli_query($con,$sqlseller);
								  $rsseller = mysqli_fetch_array($qsqlseller);
								  
								   $sqlworker = "SELECT * FROM worker WHERE worker_id='$rs[worker_id]'";
								  $qsqlworker = mysqli_query($con,$sqlworker);
								  $rsworker = mysqli_fetch_array($qsqlworker);
							  ?>
    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container">
        <div class="row">
		

          <div class="col-lg-12" data-aos="fade-up" data-aos-delay="100">
            <div class="info mt-4 ">
<form method="post" action="">
<input type="hidden" name="fromdate" value="<?php echo $rs['from_date']; ?>">
<input type="hidden" name="tilldate" value="<?php echo $rs['to_date']; ?>"> 
<table width="466" height="626" border="3" class="table table-bordered">
						    <tbody>
						      <tr>
						        <th width="178" scope="row"><strong>Task Allotted:</strong></th>
						        <td width="268">&nbsp;<?php echo $rs['task']; ?></td>
					          </tr>
                              <tr>
						        <th scope="row"><strong>Worker Profile:</strong></th>
						        <td>&nbsp;<?php echo $rsworker['work_profile']; ?></td>
					          </tr>
						      <tr>
						        <th height="113" scope="row"><strong>Worker detail:</strong> <br>
								<?php
								  $sqlst = "SELECT * FROM state WHERE state_id='$rsworker[state_id]'";
								  $qsqlst = mysqli_query($con,$sqlst);
								  $rsst = mysqli_fetch_array($qsqlst);								  

								  $sqlcty = "SELECT * FROM city WHERE city_id='$rsworker[city_id]'";
								  $qsqlcty = mysqli_query($con,$sqlcty);
								  $rscty = mysqli_fetch_array($qsqlcty);	
								  
								 echo ucfirst($rsworker['name']) ."<br>".
								      $rsworker['address'] ."<br>".
								      $rscty['city'] ."<br>".
								      $rsst['state'] ."<br>". 
									   "PIN-". $rsworker['pincode'];
									  ?></th>
                                       
						        <th><strong>Seller Profile:<br>
						        </strong><?php								  

								  $sqlsst = "SELECT * FROM state WHERE state_id='$rsworker[state_id]'";
								  $qsqlsst = mysqli_query($con,$sqlsst);
								  $rssst = mysqli_fetch_array($qsqlsst);								  

								  $sqlscty = "SELECT * FROM city WHERE city_id='$rsworker[city_id]'";
								  $qsqlscty = mysqli_query($con,$sqlscty);
								  $rsscty = mysqli_fetch_array($qsqlscty);	
								  
								 echo ucfirst($rsseller['seller_name']) ."<br>".
								      $rsseller['seller_address'] ."<br>".
								      $rsscty['city'] ."<br>".
								      $rssst['state'] ."<br>".
								     "PIN-". $rsseller['pincode']; ?></th>
					          </tr> 
						      
						      <tr>
						        <th scope="row"><strong>Work Period:</strong></th>
						        <td>&nbsp; <?php echo $rs['from_date']  ." to ". $rs['to_date']; ?></td>
					          </tr>
						      <tr>
						        <th scope="row"><strong>Work Location:</strong></th>
						        <td>&nbsp;<?php echo $rscity['city'] .", ". $rsstate['state'];?>
</td></td>
					          </tr>
						      <tr>
						        <th scope="row"><strong>Incentive:</strong></th>
						        <td><?php echo $rupeesymbol; ?>&nbsp;<?php echo  $rs['salary'] ."&nbsp;(".  $rs['salary_type'] .")"; ?></td>
					          </tr>
						      <tr>
						        <th scope="row" style="vertical-align: top;"><p><strong>Seller Comment:</strong></p>
					            <strong>Status:</strong> 
                                <?php
								if(isset($_SESSION['workerid']))
								{
									if($rs['seller_status'] == "")
									{
										echo "No updates yet";
									}
									else
									{
										echo $rs['seller_status'];
									}
								}
								else
								{
								?>
                                  <input type="text" name="sellerstatus" readonly value="Approved" >
                                <?php
								}
								?>
					            </p></th>
						        <td>
                                <?php
								if(isset($_SESSION['sellerid']))
								{
								?>
									                                <textarea name="sellerallcomment" readonly style="width:250px;height:160px; background-color:rgba(239,235,235,1.00);" ><?php echo $rs['seller_comment']; ?></textarea><br>
                                <input type="text" name="sellercomment" style="width:250px;" placeholder="Post comment here" >
								<?php
                                }
								else
								{
									echo $rs['seller_comment'];
								}
								?>
                                </td>
					          </tr>
						      <tr>
						        <th scope="row" style="vertical-align: top;"><p><strong>Worker Comment:</strong></p>
					            <p><strong>Status:</strong>
					             <?php
								if(isset($_SESSION['sellerid']))
								{
									if($rs['seller_status'] == "")
									{
										echo "No updates yet";
									}
									else
									{
										echo $rs['worker_status'];
									}
								}
								else
								{
									if($rs['worker_status'] == "Approved")
									{
									?>
                                    <input type="text" name="workerstatus" readonly value="Approved" >
                                    <?php
									}
									else
									{
								?>
                                  
                                  <select name="workerstatus" id="workerstatus">
                                    <option value="">Select</option>
                                     <?php
									 $arr = array("Pending","Approved","Rejected");
									 foreach($arr as $val)
									 {
										 if($val == $rs['worker_status'])
										 {
										 echo "<option value='$val' selected>$val</option>";
										 }
										 else
										 {
										 echo "<option value='$val'>$val</option>";										 
										 }
									 }
									 ?>
                                  </select>
                                  
                                  <?php
									}
								}
								?>
					            </p></th>
						        <td><?php
								if(isset($_SESSION['workerid']))
								{
								?>
								<textarea name="workerallcomment" readonly style="width:250px;height:160px; background-color:rgba(239,235,235,1.00);" ><?php echo $rs['worker_comment']; ?></textarea><br>
                                <input type="text" name="workercomment" style="width:250px;" placeholder="Post comment here" >
								<?php
                                }
								else
								{
									echo $rs['worker_comment'];
								}
								?>
                                </td>
					          </tr>
                              <?php
							  $fdate =  strtotime($rs['from_date']);
							  $dt = date("Y-m-d");
							  $currdate = strtotime($dt);
                              if($fdate > $currdate)
							  {
							  ?>
						      <tr>
						        <th colspan="2" scope="row"><center><input type="submit" name="submit" id="submit" value="Update" class="btn btn-info" ></center></th>
					          </tr>
                              <?php
							  }
							  ?>
					        </tbody>
					      </table>
                          </form>
            </div>
		  </div>
		  
        </div>

      </div>
    </section><!-- End Contact Section -->

  </main><!-- End #main -->
  
<?php
include("footer.php");
?>