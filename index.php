<?php
require_once("functions.php");
$conn = connectAppDB();
$web_data = getWebsiteData();
$links = getAllLinks($mode="get_home_content");
require_once("pagelayout.php");

openSiteHeader("Welcome",$web_data);
getHeaderScripts($web_data);
closeSiteHeader($web_data);
getSocialMediaLinks($web_data);
getMenulinks(1,1,$web_data,$links);
//getCarousel();

$page = getMorePageDetails("url_content","index");
//$carousel = getCarouselPictures($status=1);
?>
<section id="slider-wrapper" class="layer-slider-wrapper layer-slider-fullsize">	
  <!-- Carousel -->
  <div id="main-slide" class="carousel slide" data-ride="carousel">

<?	$carousel = getCarouselPictures($status=1);?>

     <!-- Indicators -->
     <ol class="carousel-indicators">
     	<?	for($e=0;$e<$carousel->num;$e++){?>
            <li data-target="#main-slide" data-slide-to="<?=$e?>" <?=$e==0?"class='active'":""?>></li>
        <?	}?>
    </ol><!--/ Indicators end-->

    <!-- Carousel inner -->
<div class="carousel-inner">

	<!--#ITEM 1-->
    <?	
		$i=0;
		while($results = $carousel->data->fetch_assoc()){
		?>
        <div class="item <?=$i==0?"active":""?>">
            <img class="img-responsive" src="<?=$results['picture_url']?>" alt="slider">
            <div class="slider-content">
              <div class="col-md-12 text-center">
                <!--<h2 class="animated2">
                  <span>Welcome to <strong>Margo</strong></span>
              </h2>-->
              <h3 class="ls-l title text-normal" style="width:600px; top:35%; left:80px;" data-ls="offsetxin:0;offsetyin:250;durationin:1000;delayin:500;offsetxout:0;offsetyout:-8;easingout:easeInOutQuart;scalexout:1.2;scaleyout:1.2;">
               <span><?=$results['caption']?></span>
            </h3>
            <!--<p class="animated4"><a href="#" class="slider btn btn-system btn-large">Check Now</a></p>-->
            </div>
        </div>
    </div><!--/ Carousel item end -->
	<?	
			$i++;
		}
	?>

</div><!-- Carousel inner end-->

<!-- Controls -->
<a class="left carousel-control" href="#main-slide" data-slide="prev">
   <span><i class="fa fa-angle-left"></i></span>
</a>
<a class="right carousel-control" href="#main-slide" data-slide="next">
   <span><i class="fa fa-angle-right"></i></span>
</a>
</div><!-- /carousel -->    	
</section>

<!-- ADMISSION LINK -->
        <section class="slice p-15 base">
        <div class="cta-wr">
            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        <h1 class="text-normal">
                            Gain Admission Into <strong><?=$web_data["School_Name"]?></strong> In Easy Steps 
                        </h1>
                    </div>
                    <div class="col-md-4">
                        <a href="admission?admission" class="btn btn-lg btn-b-white btn-icon btn-icon-right btn-check pull-right">
                            <span>Click here</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>

 <!-- PRE CONTENT -->
        <section class="slice no-padding">
			<div class="wp-section">
				<div class="row-fluid">
					<div class="col-md-4 wp-block no-space arrow-right light no-margin">
						<div class="wp-block-body">
							<div class="img-icon">
								<i class="fa fa-book"></i>
							</div>
							<h1>Pre-School</h1>
							<p class="text-center">
								<a href ="academics?preschool"> Click here to Learn More... </a>
							</p>
						</div>
					</div>
					<div class="col-md-4 wp-block no-space arrow-right base no-margin">
						<div class="wp-block-body">
							<div class="img-icon">
								<i class="fa fa-pencil"></i>
							</div>
							<h1>Primary School</h1>
							<p class="text-center">
								<a href ="academics?primary"> Click here to Learn More... </a>
							</p>
						</div>
					</div>
					<div class="col-md-4 wp-block no-space dark no-margin">
						<div class="wp-block-body">
							<div class="img-icon">
								<i class="fa fa-graduation-cap"></i>
							</div>
							<h1>Secondary School</h1>
							<p class="text-center">
								<a href ="academics?secondary"> Click here to Learn More... </a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</section>
		
		
 <!-- MAIN CONTENT -->		
<section class="slice light-gray bb">
        <div class="wp-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-7">
                        <div class="section-title-wr">
                            <h3 class="section-title left">
                                <span>Welcome to <?=$web_data["School_Name"]?></span>
                            </h3>
                        </div>
                        <div class="row">
                            <div class="col-md-8" style="width:100%">
                            	<div class="col-md-4" style="width:60%">
                                	<img src="<?=$page['picture_url']?>" alt="" class="img-responsive img-thumbnail" height="400" width="400">
                            	</div>
                                <p>
                                <?=$page['content']?>
                                </p>
                            </div>
                        </div>
                       <!-- <blockquote class="blockquote-1">
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid</p>
                            <small>Someone famous in <cite title="Source Title">Source Title</cite></small>
                        </blockquote>-->
                    </div>
                    <div class="col-md-5">
                        <div class="section-title-wr">
                            <h3 class="section-title left">
                                <span>Why Choose Us</span>
                            </h3>
                        </div>
                        <div class="widget">
                            <div class="panel-group" id="accordion">
                                <div class="panel panel-default">
                                  <div class="panel-heading">
                                    <h4 class="panel-title">
                                      <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" class="collapsed">
                                        Our Vision
                                      </a>
                                        </h4>
                                  </div>
                                  <div id="collapseOne" class="panel-collapse collapse" style="height: 0px;">
                                    <div class="panel-body">
                                        <p>
                                          <?=$web_data['School_Vision']?>
                                        </p>
                                    </div>
                                  </div>
                                </div>
                                <div class="panel panel-default">
                                  <div class="panel-heading">
                                    <h4 class="panel-title">
                                      <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" class="collapsed">
                                        Our Mission
                                      </a>
                                    </h4>
                                  </div>
                                  <div id="collapseTwo" class="panel-collapse collapse" style="height: 0px;">
                                    <div class="panel-body">
                                      <p>
										  <?=$web_data['School_Mission']?>
                                      </p>
                                    </div>
                                  </div>
                                </div>
                                <div class="panel panel-default">
                                  <div class="panel-heading">
                                    <h4 class="panel-title">
                                      <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree" class="collapsed">
                                        School Anthem
                                      </a>
                                    </h4>
                                  </div>
                                  <div id="collapseThree" class="panel-collapse collapse" style="height: 0px;">
                                    <div class="panel-body">
                                      <p>
                                      <?=$web_data['School_Song']?>
                                    </p>
                                    </div>
                                  </div>
                                </div>
                                <div class="panel panel-default">
                                  <div class="panel-heading">
                                    <h4 class="panel-title">
                                      <a data-toggle="collapse" data-parent="#accordion" href="#collapseFour" class="collapsed">
                                        Our Core Values
                                      </a>
                                    </h4>
                                  </div>
                                  <div id="collapseFour" class="panel-collapse collapse" style="height: 0px;">
                                    <div class="panel-body">
                                      <p>
                                         <?=$web_data['School_Core_Values']?>
                                      </p>
                                    </div>
                                  </div>
                                </div>
                                <div class="panel panel-default">
                                  <div class="panel-heading">
                                    <h4 class="panel-title">
                                      <a data-toggle="collapse" data-parent="#accordion" href="#collapseFive" class="">
                                        Downloads
                                      </a>
                                    </h4>
                                  </div>
                                  <div id="collapseFive" class="panel-collapse in" style="height: auto;">
                                    <div class="panel-body">
                                      <p>
                                          <ul class="icons-list">
                                            <?
                                                //connectAppDB();
                                                $school_files = $conn->query("SELECT * FROM uploads 
                                                ORDER BY uploadtype");
                                                
                                                while(@$record = $school_files->fetch_array($school_files)){
                                                    $captnn = "";
													if($record["uploadtype"]=="newsletter"){
														$captnn = "Secondary Newsletter";
													}elseif($record["uploadtype"]=="newsletter_2"){
														$captnn = "Primary Newsletter";
													}elseif($record["uploadtype"]=="admission_form"){
														$captnn = "Secondary Admission Form";
													}elseif($record["uploadtype"]=="admission_form_2"){
														$captnn = "Primary Admission Form";
													}
                                            ?>
                                                    <li> <a href="download?id=<?=$record["filedir"]?>&type=calendar"><i class="fa fa-file-pdf-o"></i> <?=$captnn?></a></li>
                                            <?
                                                }
                                            ?>  
                                          </ul>
                                      </p>
                                    </div>
                                  </div>
                                </div>
                              </div>
                        </div>
                        
                        
                        <?	if($web_data["School_Video"]!=""){?>
								<iframe width="450" height="315" src="<?=$web_data["School_Video"]?>" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
						<?	}?>
                        
                    </div>
                </div>
            </div>
        </div>    
    </section>


    
     <div class="container">
       <section class="prlx-bg inset-shadow-1" data-stellar-ratio="2" style="min-height: 450px; padding: 50px 0; background-image: url(<?=$web_data['Banner_BG']?>); background-position: 0 -100px;">
        <div class="mask mask-2"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="text-center">
<!--                            <h4 class="c-white"><i class="fa fa-birthday-cake fa-4x"></i></h4>
-->                            <h2 class="c-white">Our Achievement Rating</h2>
                            
                            <div class="row">
                                <div class="col-sm-6 col-md-3">
                                    <div class="pie-chart" data-percent="91%" data-color="#FFF">
                                        <span class="percent"></span>
                                        <div class="chart-text">
                                            <h3 class="c-white">Examinations</h3>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-md-3">
                                    <div class="pie-chart" data-percent="76" data-color="#FFF">
                                        <span class="percent"></span>
                                        <div class="chart-text">
                                            <h3 class="c-white">Awards</h3>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-md-3">
                                    <div class="pie-chart" data-percent="88" data-color="#FFF">
                                        <span class="percent"></span>
                                        <div class="chart-text">
                                            <h3 class="c-white">Attentiveness</h3>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-md-3">
                                    <div class="pie-chart" data-percent="99" data-color="#FFF">
                                        <span class="percent"></span>
                                        <div class="chart-text">
                                            <h3 class="c-white">ICT Compliance</h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
      </section>
     </div>

<?	$scrollcontent = "";?>
    
<? 
						connectAppDB();
						$queryAU = $conn->query("SELECT * FROM 
						adminupdate WHERE updatetype = 'news' 
						ORDER BY id DESC LIMIT 7"); 
						$resultsAU = $queryAU;
						while($results = $resultsAU->fetch_assoc()){
$scrollcontent.="<i>".$results['caption']."</i> ".$results['content']."&nbsp;&nbsp;&nbsp;&nbsp;";
							
                         
							
                        }?>	

<?
$newstrng = strip_tags($scrollcontent);
$displaystr = str_replace(array("\n","\r\n","\r"), '', $newstrng);
?>

<section class="slice light-gray" style="background-color:grey;color:white;font-size:14pt;">
        <div class="wp-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div id="maqueencont">
<marquee behavior="scroll" direction="left" ><?=$displaystr?></marquee>
                           <span id="maqueentext"></span>							
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

	
	<?
			$queryV = $conn->query("SELECT * FROM 
			adminupdate WHERE updatetype = 'video' 
			ORDER BY id DESC LIMIT 7"); 
	?>
	<?	if($queryV->num_rows > 0){?>
			<section class="slice relative bg-white bb animate-hover-slide">
				<div class="wp-section">
					<div class="container">
						<div class="section-title-wr">
							<h3 class="section-title left"><span>Our Videos</span></h3>
						</div>
						
						<div id="carouselWork" class="carousel carousel-3 slide animate-hover-slide">
							<div class="carousel-nav">
								<a data-slide="prev" class="left" href="#carouselWork"><i class="fa fa-angle-left"></i></a>
								<a data-slide="next" class="right" href="#carouselWork"><i class="fa fa-angle-right"></i></a>
							</div>
							
							<!-- Wrapper for slides -->
							<div class="carousel-inner">
								<div class="item active">
									<div class="row">
										<?	while($resultsV = $queryV->fetch_assoc()){?>
												<div class="col-md-4">
													<div class="wp-block inverse">
														<div class="figure">
															<iframe width="300" height="315" src="<?=$resultsV['content']?>" frameborder="0" allowfullscreen></iframe>
															<!--<img alt="" src="images/prv/wk-img-8.jpg" class="img-responsive">
															<div class="figcaption bg-base"></div>
															<div class="figcaption-btn">
																<a href="images/prv/wk-img-8.jpg" class="btn btn-xs btn-b-white theater"><i class="fa fa-plus-circle"></i> Zoom</a>
																<a href="#" class="btn btn-xs btn-b-white"><i class="fa fa-link"></i> View</a>
															</div>-->
														</div>
														<div class="row">
															<div class="col-xs-9">
																<h2><?=$resultsV['caption']?></h2>
															</div>
														</div>
													</div>
												</div>
										<?	}?>
									</div>
								</div>
							</div>
						</div>  
					</div>
				</div>
			</section>
	<?	}?>
	
    <section class="slice light-gray">
        <div class="wp-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        
                        <div id="carouselTestimonial" class="carousel carousel-testimonials slide" data-ride="carousel">
                            <!-- Indicators -->
                            <?
							connectAppDB();
							$query = $conn->query("SELECT COUNT(*) as count FROM 
							testimonies WHERE status = 'ACTIVE'");
							$result = $query->fetch_assoc();
							$num=$result['count'];
							//echo $num;
							//die('here');
							?>
                            <ol class="carousel-indicators">
                            <?
							if($num>5) $num=4; 
							for(@$i==0;@$i<=$num-1;@$i++){
							?>
                                <li data-target="#carouselTestimonial" data-slide-to="<?=$i?>" class="<?=$i==0?"active":""?>"></li>
                             <? }?>
                            </ol>
							
                            <!-- Wrapper for slides -->
                            <div class="carousel-inner">
                            <? 
							connectAppDB();
							$query2 = $conn->query("SELECT * FROM 
							testimonies WHERE status = 'ACTIVE' 
							ORDER BY sn DESC LIMIT 7");
							$results2 = $query2;
							
							$j=1;
							while($results2 = $query2->fetch_assoc()){
							?>
                                <div class="item <?=$j==1?"active":""?>">
                                    <div class="text-center">
                                        <h4><i class="fa fa-quote-left fa-3x"></i></h4>
                                        <p class="testimonial-text">
                                        <?=$results2['testimony']?>
                                        </p>
                                        <p>
                                            <?=$results2['name']?>
                                        </p>
                                        <span class="clearfix"></span>
                                    </div>
                                </div>
                            <? $j++; } ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

<!-- <div class="modal fade bs-newaccount-modal-lg" tabindex="-1" role="dialog" aria-hidden="true" id="myModal">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">

			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">News & Announcement
				</h4>
			</div>
			<div class="modal-body">
				<?	//for($s=0;$s<count($newsholder);$s++){?>	
                				
						<div class="form-group" style="float:left">
                        
						</div>					
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			</div>

		</div>
	</div>
</div> -->

<style>
.modal2 {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 10000; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: scroll; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

.modal-content2 {
    background-color: #ffffff;
    margin: 2% auto; /* 15% from the top and centered */
    padding: 5px;
    border: 1px solid #888;
    width: 70%; /* Could be more or less, depending on screen size */
    min-height: 100%;
}

.close2 {
    color: #aaa;
    float: right;
    font-size: 28px;
    font-weight: bold;
}

.close2:hover,
.close2:focus {
    color: black;
    text-decoration: none;
    cursor: pointer;
}

</style>
<!-- <div id="myModal2" class="modal2">

        <!-- Modal content -->
        <!-- <div class="modal-content2">
            <span class="close2" onClick="javascript:return closeModal();">&times;</span><!---->            
            
        </div>

    </div>
<?php
//getTestimonials();
getSiteFooter($web_data);
?>

<script type="text/javascript">
	$(document).ready(function() {
		callModalNow()
	});	//end of document ready function	
	function callModalNow(){
		<?	if(count($newsholder)>=0){?>
				$("#myModal2").modal("show");	
		<?	}?>
	}
</script>	