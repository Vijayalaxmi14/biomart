<?php
include("header.php");
if(!isset($_SESSION['workerid']))
{
	echo "<script>window.location='index.php';</script>";
}
if(isset($_SESSION['workerid']))
{
	$sql = "SELECT * FROM worker WHERE worker_id='$_SESSION[workerid]'";
	$qsql = mysqli_query($con,$sql);
	$rsdisp = mysqli_fetch_array($qsql);
}

?>
  <main id="main">


    <!-- ======= Cta Section ======= -->
    <section id="cta" class="cta">
      <div class="container">

        <div class="text-center" data-aos="zoom-in">
		<br><br>
          <h3>Worker Panel</h3>
        </div>

      </div>
    </section><!-- End Cta Section -->


    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container">
        <div class="row">

          <div class="col-lg-12" data-aos="fade-up" data-aos-delay="100">
            <div class="info mt-4">
					
<?php
if(!isset($_GET['workschedule']))
{
?>                
                            <form method="post" action="" name="frmcstview">
							<table class="table table-striped table-bordered" style="width:100%" class="datatable">
							  <tbody>
							    <tr>
							      <th width="236" height="34" align="right"><strong>Your Name:</strong></th>
							      <td ><?php echo $rsdisp['name']; ?></td>
						        </tr>
							    <tr>
							      <th height="48" align="right"><strong>Your Address:</strong></th>
                                 <?php
								  $sql2 = "SELECT * FROM state WHERE state_id='$rsdisp[state_id]'";
								  $qsql2 = mysqli_query($con,$sql2);
								  $rs2 = mysqli_fetch_array($qsql2);
								  
								  $sql3 = "SELECT * FROM city WHERE city_id='$rsdisp[city_id]'";
								  $qsql3 = mysqli_query($con,$sql3);
								  $rs3 = mysqli_fetch_array($qsql3); ?>
								  <td>
								 <?php echo $rsdisp['address'].","; ?><br />
                                 <?php echo $rs3['city'].","; ?><br />
                                 <?php echo $rsdisp['pincode'].","; ?><br />
                                 <?php echo $rs2['state']; ?> <br />
                                 </td>
						        </tr>  
                                 <tr>
							      <th height="33" align="left"><strong>Date Of Birth:</strong></th>
							      <td><?php echo $rsdisp['date_of_birth']; ?>
								</td>
							    <tr>
							      <th height="39" align="left"><strong>Contact Number:</strong></th>
							      <td><?php echo $rsdisp['contactno']; ?></td>
						        </tr>
							    <tr>
							      <th height="35" align="left"><strong>Work Profile:</strong></th>
							      <td><?php echo $rsdisp['work_profile']; ?></td>
						        </tr>
                                <tr>
							      <th height="35" align="left"><strong>Biodata:</strong></th>
							      <td><a href='imgworker/<?php echo $rsdisp['biodata']; ?>'>View Biodata</a>							  
</td>
						        </tr>
							    <tr>
							      <th height="39" align="left"><strong>Email ID:</strong></th>
							      <td><?php echo $rsdisp['login_id']; ?></td>
						        </tr>
							    <tr>
							      <th height="33" align="left"><strong>Expected Salary:</strong></th>
							      <td><?php echo $rupeesymbol; ?>&nbsp;<?php echo $rsdisp['expected_salary']; ?>
								</td>
						        </tr>
						      </table>
                          </form>
						<hr />
                        <br />	
<?php
}
if(isset($_GET['workschedule']))
{
?>
<header>
                      <h2>Your Work Schedule</h2>
 </header>
<?Php
//// Settings, change this to match your requirment //////
$start_year=2000; // Starting year for dropdown list box
$end_year=2020;  // Ending year for dropdown list box
////// end of settings ///////////
?>
<?Php
include("calendarscript.php");
@$month=$_GET['month'];
@$year=$_GET['year'];

if(!($month <13 and $month >0)){
$month =date("m");  // Current month as default month
}

if(!($year <=$end_year and $year >=$start_year)){
$year =date("Y");  // Set current year as default year 
}

$d= 2; // To Finds today's date
//$no_of_days = date('t',mktime(0,0,0,$month,1,$year)); //This is to calculate number of days in a month
$no_of_days = cal_days_in_month(CAL_GREGORIAN, $month, $year);//calculate number of days in a month

$j= date('w',mktime(0,0,0,$month,1,$year)); // This will calculate the week day of the first day of the month
//echo $j;
$adj=str_repeat("<td>&nbsp;</td>",$j);  // Blank starting cells of the calendar 
$blank_at_end=42-$j-$no_of_days; // Days left after the last day of the month
if($blank_at_end >= 7){$blank_at_end = $blank_at_end - 7 ;} 
$adj2=str_repeat("<td >&nbsp;</td>",$blank_at_end); // Blank ending cells of the calendar

/// Starting of top line showing year and month to select ///////////////

echo "<table class='main tftable1'><td colspan=7 align='center' >

<select name=month value='' onchange=\"reload(this.form)\" id=\"month\">
<option value=''>Select Month</option>";
for($p=1;$p<=12;$p++){

$dateObject   = DateTime::createFromFormat('!m', $p);
$monthName = $dateObject->format('F');
if($month==$p){
echo "<option value=$p selected>$monthName</option>";
}else{
echo "<option value=$p>$monthName</option>";
}
}
echo "</select>
<select name=year value='' onchange=\"reload(this.form)\" id=\"year\">Select Year</option>
";
for($i=$start_year;$i<=$end_year;$i++){
if($year==$i){
echo "<option value='$i' selected>$i</option>";
}else{
echo "<option value='$i'>$i</option>";
}
}
echo "</select>";

echo " </td>";
/*echo "<td align='center'> <a href=# onClick='self.close();'>X</a></td>"; */
echo " </tr><tr>";
echo "<th><strong>Sun</strong></th><th><strong>Mon</strong></th><th><strong>Tue</strong></th><th><strong>Wed</strong></th><th><strong>Thu</strong></th><th><strong>Fri</strong></th><th><strong>Sat</strong></th></tr><tr>";

////// End of the top line showing name of the days of the week//////////

//////// Starting of the days//////////
for($i=1;$i<=$no_of_days;$i++){
$pv="'$month'".","."'$i'".","."'$year'";
if(isset($_GET['month']))
{
	$imonth = $_GET['month'];
}
else
{
	$imonth = date('m');
}

if(isset($_GET['year']))
{
	$iyear = $_GET['year'];
}
else
{
	$iyear = date('Y');
}
$dtmnyr = $iyear . "-" . $imonth . "-" . $i ;
$sqlworkrq = "SELECT * FROM  `worker_request` WHERE ( '$dtmnyr' BETWEEN  `from_date` AND  `to_date` ) AND  worker_id='$_SESSION[workerid]' AND worker_status !='Rejected'"; 
$qsqlworkrq = mysqli_query($con,$sqlworkrq);

if(mysqli_num_rows($qsqlworkrq) >=1 )
{
	$changecolor= " style='background-color:#FFEB99;'";
}
else
{
	$changecolor= " style='background-color:#d4e3e5;'";
}

echo $adj."<td height='50' $changecolor><a href='#' onclick=\"post_value($pv);\"><strong>$i</strong></a><br>"; // This will display the date inside the calendar cell
while($rsworkq = mysqli_fetch_array($qsqlworkrq))
{
		$sqlseller = "SELECT * FROM seller WHERE seller_id='$rsworkq[seller_id]'";
		$qsqlseller = mysqli_query($con,$sqlseller);
		$rsseller = mysqli_fetch_array($qsqlseller);										  						  

		$sqlworker = "SELECT * FROM worker WHERE worker_id='$rsworkq[worker_id]'";
		$qsqlworker = mysqli_query($con,$sqlworker);
		$rsworker = mysqli_fetch_array($qsqlworker);										  						  
	echo "<a href='viewworkerrequestdetailed.php?viewid=$rsworkq[0]' title='$rsworkq[task] \n Worker-$rsworker[name] \n Seller-$rsseller[seller_name]' >";

	if($rsworkq['worker_status'] != "")
	{
		if($rsworkq['worker_status'] == "Pending")
		{
		echo "<font style='color:green;'>".$rsworkq['worker_status']."</font>";
		}
		else
		{
		echo $rsworkq['worker_status'];
		}
	}
	else
	{
		echo "Pending";
	}
	echo "</a><br>";
}

echo " </td>";
$adj='';
$j ++;
if($j==7){echo "</tr><tr>"; // start a new row
$j=0;}

}
echo $adj2;   // Blank the balance cell of calendar at the end 
echo "</tr></table>";
?>
		
<?php
}
?>
					</div>
				</div>
			
			</div>
		  </div>
		  
        </div>

      </div>
    </section><!-- End Contact Section -->

  </main><!-- End #main -->
  
<?php
include("footer.php");
?>
<script>
$(document).ready( function () {
    $('#datatable').DataTable();
} );
</script>