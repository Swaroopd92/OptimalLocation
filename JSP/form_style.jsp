
<!DOCTYPE html>
<html lang="en">
  <head>
  	<title> Smart Forms - UI Elements </title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" type="text/css"  href="<%=request.getContextPath()%>/CSS/smart-forms.css">
    <link rel="stylesheet" type="text/css"  href="<%=request.getContextPath()%>/CSS/awsome.css">

    <!--[if lte IE 9]>
    	<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>    
        <script type="text/javascript" src="js/jquery.placeholder.min.js"></script>
    <![endif]-->    
    
    <!--[if lte IE 8]>
        <link type="text/css" rel="stylesheet" href="css/smart-forms-ie8.css">
    <![endif]-->
    
	<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
	<script type="text/javascript">
	
		function initialize() {
				var mapOptions = {
							zoom: 10,
							center: new google.maps.LatLng(29.760193, -95.369390),   
							mapTypeId: google.maps.MapTypeId.ROADMAP
					};
		
				var map = new google.maps.Map(document.getElementById('map_canvas'), mapOptions);
				var marker = new google.maps.Marker({
							map: map, 
							draggable: false, 
							position: new google.maps.LatLng(29.760193, -95.369390)
					});
		 }						
		google.maps.event.addDomListener(window, 'resize', initialize);
		google.maps.event.addDomListener(window, 'load', initialize);
         
    </script>    
       
</head>

<body class="woodbg">

	<div class="smart-wrap">
    	<div class="smart-forms smart-container wrap-2">
        
        	<div class="form-header header-primary">
            	<h4><i class="fa fa-flask"></i>Smart Form UI</h4>
            </div><!-- end .form-header section -->
   	    
            
            <form method="post" action="" id="form-ui">
            	<div class="form-body">
                
                    <div class="spacer-b30">
                    	<div class="tagline"><span>Form UI Elements </span></div><!-- .tagline -->
                    </div>
                    
                    <div class="frm-row">
                    
                        <div class="colm colm6">
                        
                            <div class="section">
                                <label class="field">
                                    <input type="text" name="from" id="from" class="gui-input" placeholder="Input no icon">
                                </label>
                            </div><!-- end section -->                     
                            
                            <div class="section">
                                <label class="field prepend-icon">
                                    <input type="text" name="firstname" id="firstname" class="gui-input" placeholder="Text input icon left">
                                    <label for="firstname" class="field-icon"><i class="fa fa-user"></i></label>  
                                </label>
                            </div><!-- end section -->
                            
                            <div class="section">
                                <label class="field append-icon">
                                    <input type="text" name="lastname" id="lastname" class="gui-input" placeholder="Text input icon right">
                                    <label for="lastname" class="field-icon"><i class="fa fa-user"></i></label>  
                                </label>
                            </div><!-- end section -->
                            
                            <div class="section">
                                <label class="field prepend-icon">
                                    <input type="search" name="s" id="s" class="gui-input" placeholder="search input">
                                    <label for="s" class="field-icon"><i class="fa fa-search"></i></label>  
                                </label>
                            </div><!-- end section -->                            
                        
                        </div><!-- end .colm6 section -->
                                           
                        <div class="colm colm6">
                        
                            <div class="section">
                                <label class="field prepend-icon">
                                    <input type="url" name="website" id="website" class="gui-input" placeholder="URL input">
                                    <label for="website" class="field-icon"><i class="fa fa-globe"></i></label>  
                                </label>
                            </div><!-- end section -->                           
                        
                            <div class="section">
                                <label class="field prepend-icon">
                                    <input type="email" name="email" id="email" class="gui-input" placeholder="Email input">
                                    <label for="email" class="field-icon"><i class="fa fa-envelope"></i></label>  
                                </label>
                            </div><!-- end section -->
                            
                            <div class="section">
                                <label class="field prepend-icon">
                                    <input type="tel" name="mobile" id="mobile" class="gui-input" placeholder="Telephone input">
                                    <label for="mobile" class="field-icon"><i class="fa fa-phone-square"></i></label>  
                                </label>
                            </div><!-- end section -->
                            
                            <div class="section">
                                <label class="field prepend-icon">
                                    <input type="password" name="password" id="password" class="gui-input" placeholder="Password input">
                                    <label for="password" class="field-icon"><i class="fa fa-lock"></i></label>  
                                </label>
                            </div><!-- end section -->                            
                        
                        </div><!-- end .colm6 section -->  
                    
                    </div><!-- end .frm-row section --> 
                     
                    
                    <div class="frm-row">
                    
                        <div class="section colm colm6">
                            <label class="field select">
                                <select id="country" name="country">
                                    <option value="">Select with single arrow</option>
                                    <option value="AL">Albania</option>
                                    <option value="DZ">Algeria</option>
                                    <option value="AD">Andorra</option>
                                    <option value="AO">Angola</option>
                                    <option value="AI">Anguilla</option>
                                    <option value="AG">Antigua and Barbuda</option>
                                    <option value="AR">Argentina</option>
                                    <option value="AM">Armenia</option>
                                    <option value="AW">Aruba</option>
                                    <option value="AU">Australia</option>
                                    <option value="AT">Austria</option>
                                    <option value="AZ">Azerbaijan Republic</option>
                                    <option value="BS">Bahamas</option>
                                    <option value="BH">Bahrain</option>
                                    <option value="BB">Barbados</option>
                                    <option value="BE">Belgium</option>
                                    <option value="BZ">Belize</option>
                                    <option value="BJ">Benin</option>
                                    <option value="BM">Bermuda</option>
                                </select>
                                <i class="arrow"></i>                    
                            </label>  
                        </div><!-- end section -->                     
                        
                        <div class="section colm colm6">
                            <label class="field select">
                                <select id="location" name="location">
                                    <option value="">Select with double arrows</option>
                                    <option value="AL">Albania</option>
                                    <option value="DZ">Algeria</option>
                                    <option value="AD">Andorra</option>
                                    <option value="AO">Angola</option>
                                    <option value="AI">Anguilla</option>
                                    <option value="AG">Antigua and Barbuda</option>
                                    <option value="AR">Argentina</option>
                                    <option value="AM">Armenia</option>
                                    <option value="AW">Aruba</option>
                                    <option value="AU">Australia</option>
                                    <option value="AT">Austria</option>
                                    <option value="AZ">Azerbaijan Republic</option>
                                    <option value="BS">Bahamas</option>
                                    <option value="BH">Bahrain</option>
                                    <option value="BB">Barbados</option>
                                    <option value="BE">Belgium</option>
                                    <option value="BZ">Belize</option>
                                    <option value="BJ">Benin</option>
                                    <option value="BM">Bermuda</option>
                                </select>
                                <i class="arrow double"></i>                    
                            </label>  
                        </div><!-- end section --> 
                    
                    </div><!-- end .frm-row section -->
                    
                	<div class="section">
                    	<label class="field prepend-icon">
                        	<textarea class="gui-textarea" id="comment" name="comment" placeholder="Text area"></textarea>
                            <label for="comment" class="field-icon"><i class="fa fa-comments"></i></label>
                            <span class="input-hint"> 
                            	<strong>Hint:</strong> Don't be negative or off topic! just be awesome... 
                            </span>   
                        </label>
                    </div><!-- end section -->                     
                    
                    <div class="spacer-t40 spacer-b40">
                    	<div class="tagline"><span>File Uploaders </span></div><!-- .tagline -->
                    </div>                    
                    
                    <div class="section">
                        <label class="field prepend-icon file">
                            <span class="button"> Choose File </span>
                <input type="file" class="gui-file" name="file1" id="file1" onChange="document.getElementById('uploader1').value = this.value;">
                            <input type="text" class="gui-input" id="uploader1" placeholder="no file selected" readonly>
                            <label class="field-icon"><i class="fa fa-upload"></i></label>
                        </label>
                    </div><!-- end  section -->                     
                    
                    <div class="section">
                        <label class="field prepend-icon file">
                            <span class="button btn-primary"> Choose File </span>
                <input type="file" class="gui-file" name="file2" id="file2" onChange="document.getElementById('uploader2').value = this.value;">
                            <input type="text" class="gui-input" id="uploader2" placeholder="no file selected" readonly>
                            <label class="field-icon"><i class="fa fa-upload"></i></label>
                        </label>
                    </div><!-- end  section -->
                    
                    <div class="spacer-t40 spacer-b40">
                    	<div class="tagline"><span>Smart Widgets </span></div><!-- .tagline -->
                    </div>                                          
                    
                    <div class="section">
                        <div class="smart-widget sm-left sml-120">
                            <label class="field">
                                <input type="text" name="sm" id="sm" class="gui-input" placeholder="Smart widget left 120">
                            </label>
                            <label for="sm" class="button"> Public URL </label>
                        </div><!-- end .smart-widget section --> 
                    </div><!-- end section -->
                    
                    <div class="section">
                        <div class="smart-widget sm-left sml-80">
                            <label class="field">
                                <input type="text" name="sm2" id="sm2" class="gui-input" placeholder="Smart widget left 80">
                            </label>
                            <label for="sm2" class="button"> Search </label>
                        </div><!-- end .smart-widget section --> 
                    </div><!-- end section -->
                    
                    <div class="section">
                        <div class="smart-widget sm-left sml-50">
                            <label class="field">
                                <input type="text" name="sm3" id="sm3" class="gui-input" placeholder="Smart widget left 50">
                            </label>
                            <label for="sm3" class="button"> <i class="fa fa-search"></i> </label>
                        </div><!-- end .smart-widget section --> 
                    </div><!-- end section -->                                        
                    
                    <div class="section">
                        <div class="smart-widget sm-right smr-50">
                            <label class="field">
                                <input type="text" name="sub" id="sub" class="gui-input" placeholder="Smart widget right 50">
                            </label>
                            <button type="submit" class="button"> <i class="fa fa-search"></i> </button>
                        </div><!-- end .smart-widget section --> 
                    </div><!-- end section -->
                    
                    <div class="section">
                        <div class="smart-widget sm-right smr-80">
                            <label class="field prepend-icon">
                                <input type="text" name="sub2" id="sub2" class="gui-input" placeholder="Smart widget right 80">
                                <label for="s" class="field-icon"><i class="fa fa-search"></i></label> 
                            </label>
                            <button type="submit" class="button"> Search </button>
                        </div><!-- end .smart-widget section --> 
                    </div><!-- end section --> 
                    
                    <div class="section">
                        <div class="smart-widget sm-right smr-120">
                            <label class="field">
                                <input type="text" name="sub3" id="sub3" class="gui-input" placeholder="Smart widget right 120">
                            </label>
                            <button type="submit" class="button"> Subscribe </button>
                        </div><!-- end .smart-widget section --> 
                    </div><!-- end section -->                                                       
                                               
                    
                    <div class="spacer-t40 spacer-b30">
                    	<div class="tagline"><span> Block  Options </span></div><!-- .tagline -->
                    </div> 
                    
                    
                    <div class="frm-row">
                    
                        <div class="section colm colm4">
                        
                            <div class="option-group field">
                            
                                <label for="female" class="option block">
                                    <input type="radio" name="gender" id="female" value="female">
                                    <span class="radio"></span> Female specie
                                </label>
                                
                                <label for="male" class="option block spacer-t10">
                                    <input type="radio" name="gender" id="male" value="male">
                                    <span class="radio"></span> Male specie                  
                                </label>                            
                                
                                <label for="other" class="option block spacer-t10">
                                    <input type="radio" name="gender" id="other" value="other">
                                    <span class="radio"></span> Other specie                 
                                </label>
                                
                            </div><!-- end .option-group section --> 
                                                
                        </div><!-- end .colm section -->
                        
                                                        
                        <div class="section colm colm4">
                        
                            <div class="option-group field">
                            
                                <label class="option block">
                                    <input type="checkbox" name="mobileos" value="FR">
                                    <span class="checkbox"></span> Android Kitkat           
                                </label>
                          
                                <label class="option block spacer-t10">
                                    <input type="checkbox" name="mobileos" value="EN">
                                    <span class="checkbox"></span> Windows 8 Mobile           
                                </label>
                                
                                <label class="option block spacer-t10">
                                    <input type="checkbox" name="mobileos" value="CH">
                                    <span class="checkbox"></span> Apple IOS 7            
                                </label>                                
                                
                            </div><!-- end .option-group section --> 
                                                    
                        </div><!-- end .colm section -->
                            
                        
                        <div class="section colm colm4">
                        
                            <div class="option-group field">
                            
                                <label class="option block">
                                    <input type="checkbox" name="languages" value="FR">
                                    <span class="checkbox"></span> Fluent french            
                                </label>
                          
                                <label class="option block spacer-t10">
                                    <input type="checkbox" name="languages" value="EN">
                                    <span class="checkbox"></span> Fluent english              
                                </label>
                                
                                <label class="option block spacer-t10">
                                    <input type="checkbox" name="languages" value="CH">
                                    <span class="checkbox"></span> Fluent chinese            
                                </label>                                
                                
                            </div><!-- end .option-group section --> 
                                                    
                        </div><!-- end .colm section -->
                        
                    </div> <!-- end .frm-row section -->
                    
                    <div class="spacer-t20 spacer-b30">
                    	<div class="tagline"><span> Inline Options </span></div><!-- .tagline -->
                    </div><!-- end section -->
                    
                    <div class="section">
                    	<p class="small-text fine-grey">Inline options - choose a method of payment below </p>
                    </div><!-- end section -->
                    
                    <div class="section">
                    
                    	<div class="option-group field">
                        
                            <label class="option">
                                <input type="radio" name="payment" checked>
                                <span class="radio"></span> Credit Card                 
                            </label>
                            
                            <label class="option">
                                <input type="radio" name="payment">
                                <span class="radio"></span> Paypal                  
                            </label>
                            
                            <label class="option">
                                <input type="radio" name="payment">
                                <span class="radio"></span> Skrill                  
                            </label>                         
                            
                            <label class="option">
                                <input type="radio" name="payment">
                                <span class="radio"></span> Gumroad                  
                            </label>
                            
                             <label class="option">
                                <input type="radio" name="payment">
                                <span class="radio"></span> Payoneer                  
                            </label>
                        
                        </div><!-- end .option-group section -->
                        
                    </div><!-- end section -->
                 
                    
                	<div class="section">
                        <label class="field option block">
                            <input type="checkbox" name="terms" checked><span class="checkbox"></span> 
                            You must agree to our <a href="javascript:;" class="smart-link"> terms of service </a>                
                        </label>
                    </div><!-- end section --> 
                    
                    <div class="spacer-t40 spacer-b30">
                    	<div class="tagline"><span> Toggle Switches </span></div><!-- .tagline -->
                    </div><!-- end .spacer section --> 
                    
                    <div class="frm-row">
                    
                        <div class="section colm colm4">
                        
                            <label class="switch block">
                              <input type="checkbox" name="features" id="f1" value="javascript">
                              <label for="f1" data-on="ON" data-off="OFF"></label>
                              <span> Javascript </span>
                            </label>
                    
                            <label class="switch block">
                              <input type="checkbox" name="features" id="f2" value="downloads">
                              <label for="f2" data-on="ON" data-off="OFF"></label>
                              <span> Downloads </span>
                            </label>
                    
                            <label class="switch block">
                              <input type="checkbox" name="features" id="f3" value="cookies">
                              <label for="f3" data-on="ON" data-off="OFF"></label>
                              <span> Cookies  </span>
                            </label>
                            
                            <label class="switch block">
                              <input type="checkbox" name="features" id="f4" value="popups" checked>
                              <label for="f4" data-on="ON" data-off="OFF"></label>
                              <span> Popups </span>
                            </label>                         
                                   
                        </div><!-- end .colm section -->
                        
                        <div class="section colm colm4">
                        
                            <label class="switch block">
                              <input type="checkbox" name="tools" id="t1" value="analytics">
                              <label for="t1" data-on="YES" data-off="NO"></label>
                              <span> Analytics </span>
                            </label>
                    
                            <label class="switch block">
                              <input type="checkbox" name="tools" id="t2" value="reports">
                              <label for="t2" data-on="YES" data-off="NO"></label>
                              <span> Reports  </span>
                            </label>
                    
                            <label class="switch block">
                              <input type="checkbox" name="tools" id="t3" value="social">
                              <label for="t3" data-on="YES" data-off="NO"></label>
                              <span> Social </span>
                            </label>
                            
                            <label class="switch block">
                              <input type="checkbox" name="tools" id="t4" value="admin" checked>
                              <label for="t4" data-on="YES" data-off="NO"></label>
                              <span> Access </span>
                            </label>                         
                                   
                        </div><!-- end .colm section -->
                        
                        <div class="section colm colm4">
                        
                            <label class="switch switch-round block">
                              <input type="radio" name="framework" id="fr1" value="mootols">
                              <label for="fr1" data-on="YES" data-off="NO"></label>
                              <span> MooTools </span>
                            </label>
                    
                            <label class="switch switch-round block">
                              <input type="radio" name="framework" id="fr2" value="angular">
                              <label for="fr2" data-on="YES" data-off="NO"></label>
                              <span> Angular JS  </span>
                            </label>
                    
                            <label class="switch switch-round block">
                              <input type="radio" name="framework" id="fr3" value="jquery">
                              <label for="fr3" data-on="YES" data-off="NO"></label>
                              <span> jQuery </span>
                            </label>
                            
                            <label class="switch switch-round block">
                              <input type="radio" name="framework" id="fr4" value="dojo" checked>
                              <label for="fr4" data-on="YES" data-off="NO"></label>
                              <span> Dojo </span>
                            </label>                        
                                   
                        </div><!-- end .colm section -->                                                
                    
                    </div><!-- end .frm-row section -->
                    
                    
                    <div class="spacer-t20 spacer-b40">
                    	<div class="tagline"><span> Review &amp; Rating Widget </span></div><!-- .tagline -->
                    </div><!-- end .spacer section -->
                    
                    <div class="frm-row">
                    
                        <div class="section colm colm6 pad-r40 bdr">
                        
                            <span class="rating block">
                            
                                <span class="lbl-text">Customization</span>
                                
                                <input class="rating-input" id="r5" type="radio"  name="custom" checked>
                                <label class="rating-star" for="r5"><i class="fa fa-star"></i></label>
                                
                                <input class="rating-input" id="r4" type="radio"  name="custom">
                                <label class="rating-star" for="r4"><i class="fa fa-star"></i></label>
                                
                                <input class="rating-input" id="r3" type="radio"  name="custom">
                                <label class="rating-star" for="r3"><i class="fa fa-star"></i></label>
                                
                                <input class="rating-input" id="r2" type="radio"  name="custom">
                                <label class="rating-star" for="r2"><i class="fa fa-star"></i></label>
                                
                                <input class="rating-input" id="r1" type="radio"  name="custom">
                                <label class="rating-star" for="r1"><i class="fa fa-star"></i></label>
                            
                            </span>
                            
                            <span class="rating block">
                            
                                <span class="lbl-text">Reliability</span>
                                
                                <input class="rating-input" id="rr5" type="radio"  name="reliable">
                                <label class="rating-star" for="rr5"><i class="fa fa-star"></i></label>
                                
                                <input class="rating-input" id="rr4" type="radio"  name="reliable" checked>
                                <label class="rating-star" for="rr4"><i class="fa fa-star"></i></label>
                                
                                <input class="rating-input" id="rr3" type="radio"  name="reliable">
                                <label class="rating-star" for="rr3"><i class="fa fa-star"></i></label>
                                
                                <input class="rating-input" id="rr2" type="radio"  name="reliable">
                                <label class="rating-star" for="rr2"><i class="fa fa-star"></i></label>
                                
                                <input class="rating-input" id="rr1" type="radio"  name="reliable">
                                <label class="rating-star" for="rr1"><i class="fa fa-star"></i></label>
                            
                            </span>
                            
                            <span class="rating block">
                            
                                <span class="lbl-text">Relevance</span>
                                
                                <input class="rating-input" id="rx5" type="radio"  name="relevance">
                                <label class="rating-star" for="rx5"><i class="fa fa-star"></i></label>
                                
                                <input class="rating-input" id="rx4" type="radio"  name="relevance">
                                <label class="rating-star" for="rx4"><i class="fa fa-star"></i></label>
                                
                                <input class="rating-input" id="rx3" type="radio"  name="relevance" checked>
                                <label class="rating-star" for="rx3"><i class="fa fa-star"></i></label>
                                
                                <input class="rating-input" id="rx2" type="radio"  name="relevance">
                                <label class="rating-star" for="rx2"><i class="fa fa-star"></i></label>
                                
                                <input class="rating-input" id="rx1" type="radio"  name="relevance">
                                <label class="rating-star" for="rx1"><i class="fa fa-star"></i></label>
                            
                            </span>                         
                                                           
                        </div><!-- end  section -->
                        
                        <div class="section colm colm6 pad-l40">
                        
                            <span class="rating block">
                            
                                <span class="lbl-text">Our products</span>
                                
                                <input class="rating-input" id="five-stars" type="radio"  name="product-rate">
                                <label class="rating-star" for="five-stars"><i class="fa fa-star"></i></label>
                                
                                <input class="rating-input" id="four-stars" type="radio"  name="product-rate">
                                <label class="rating-star" for="four-stars"><i class="fa fa-star"></i></label>
                                
                                <input class="rating-input" id="three-stars" type="radio"  name="product-rate" checked>
                                <label class="rating-star" for="three-stars"><i class="fa fa-star"></i></label>
                                
                                <input class="rating-input" id="two-stars" type="radio"  name="product-rate">
                                <label class="rating-star" for="two-stars"><i class="fa fa-star"></i></label>
                                
                                <input class="rating-input" id="one-star" type="radio"  name="product-rate">
                                <label class="rating-star" for="one-star"><i class="fa fa-star"></i></label>
                            
                            </span>
                            
                            <span class="rating block">
                            
                                <span class="lbl-text">Support team</span>
                                
                                <input class="rating-input" id="5stars" type="radio"  name="support-rate">
                                <label class="rating-star" for="5stars"><i class="fa fa-star"></i></label>
                                
                                <input class="rating-input" id="4stars" type="radio"  name="support-rate">
                                <label class="rating-star" for="4stars"><i class="fa fa-star"></i></label>
                                
                                <input class="rating-input" id="3stars" type="radio"  name="support-rate">
                                <label class="rating-star" for="3stars"><i class="fa fa-star"></i></label>
                                
                                <input class="rating-input" id="2stars" type="radio"  name="support-rate" checked>
                                <label class="rating-star" for="2stars"><i class="fa fa-star"></i></label>
                                
                                <input class="rating-input" id="1star" type="radio"  name="support-rate">
                                <label class="rating-star" for="1star"><i class="fa fa-star"></i></label>
                            
                            </span>
                            
                            <span class="rating block">
                            
                                <span class="lbl-text">Response time</span>
                                
                                <input class="rating-input" id="5s" type="radio"  name="response-rate">
                                <label class="rating-star" for="5s"><i class="fa fa-star"></i></label>
                                
                                <input class="rating-input" id="4s" type="radio"  name="response-rate">
                                <label class="rating-star" for="4s"><i class="fa fa-star"></i></label>
                                
                                <input class="rating-input" id="3s" type="radio"  name="response-rate">
                                <label class="rating-star" for="3s"><i class="fa fa-star"></i></label>
                                
                                <input class="rating-input" id="2s" type="radio"  name="response-rate">
                                <label class="rating-star" for="2s"><i class="fa fa-star"></i></label>
                                
                                <input class="rating-input" id="1s" type="radio"  name="response-rate" checked>
                                <label class="rating-star" for="1s"><i class="fa fa-star"></i></label>
                            
                            </span>                         
                                                           
                        </div><!-- end  section -->                        
                    
                    </div><!-- end .frm-row  section -->                                        
                    
                    <div class="spacer-t20 spacer-b40">
                    	<div class="tagline"><span> Buttons </span></div><!-- .tagline -->
                    </div><!-- end .spacer section -->
                    
                   	<div class="section button-list">
                    
                    	<button class="button"> <i class="fa fa-align-left"></i> </button>
                        <button class="button"> <i class="fa fa-align-justify"></i> </button>
                        <a href="javascript:;" class="button"><i class="fa fa-align-center"></i></a>
                        <a href="javascript:;" class="button"><i class="fa fa-align-right"></i></a>
                        <a href="javascript:;" class="button"><i class="fa fa-align-center"></i></a>
                        <a href="javascript:;" class="button btn-primary"><i class="fa fa-align-right"></i></a>                        
                    	<button class="button btn-primary"> <i class="fa fa-align-left"></i> </button>
                        <button class="button btn-primary"> <i class="fa fa-align-justify"></i> </button>
                        <a href="javascript:;" class="button btn-primary"><i class="fa fa-align-center"></i></a>
                        <a href="javascript:;" class="button btn-primary"><i class="fa fa-align-right"></i></a>
                        
                    </div><!-- end section -->                    
                    
                   	<div class="section button-list">
                    
                        <input type="submit" value="Button normal" class="button">
                        <button class="button btn-primary"> Button primary </button>
                        <a href="javascript:;" class="button btn-rounded">Button rounded</a>
                        <a href="javascript:;" class="button btn-primary btn-rounded">Primary rounded</a>                    
                    
                    </div><!-- end section -->
                    
                    
                    
                   	<div class="section button-list">
                    
                        <input type="submit" value="Pushed normal" class="button pushed">
                        <button class="button pushed btn-primary"> Pushed primary </button>
                        <a href="javascript:;" class="button pushed btn-rounded">Pushed round</a>
                        <a href="javascript:;" class="button pushed btn-primary btn-rounded">Pushed round</a>                    
                    
                    </div><!-- end section -->                    
                    
                   	<div class="section button-list">
                    
                    	<button class="button button-left"> Button Left </button>
                        <button class="button button-right"> Button right </button>
                        <a href="javascript:;" class="button btn-primary button-left">Primary  Left</a>
                        <a href="javascript:;" class="button btn-primary button-right">Primary Right</a>                    
                    
                    </div><!-- end section -->
                     
                    
                   	<div class="section button-list">
                    
                    	<button class="button btn-pointed button-left"> Pointed Left </button>
                        <button class="button btn-pointed button-right"> Pointed right </button>
                        <a href="javascript:;" class="button btn-pointed btn-primary button-left">Pointed  Left</a>
                        <a href="javascript:;" class="button btn-pointed  btn-primary button-right">Pointed Right</a>                    
                    
                    </div><!-- end section -->
                    
                    <div class="spacer-t40 spacer-b40">
                    	<div class="tagline"><span> Simple Pricing Grid </span></div><!-- .tagline -->
                    </div><!-- end .spacer section -->
                    
                    
                	<div class="frm-row">
                    
                        <div class="colm colm6">
                        	<div class="section">
                            
                            	<div class="price-box">                                
                                	<h4><sup>$</sup>29<span class="per-month">/month</span></h4>
                                	<h5> Starter </h5>
                                    <div class="spacer spacer-t20 spacer-b20"></div>
                                	<p>For those looking for something simple to get started.</p>
                                    <div class="spacer spacer-t20 spacer-b20"></div>
                                    <a href="#" class="button block pushed expand"> Learn more </a>
                                </div><!-- end .price-box section -->
                                
                            </div><!-- end .section section -->
                        </div><!-- end .colm section -->
                        
                        <div class="colm colm6">
                        
                        	<div class="section">
                            
                            	<div class="price-box selected-box">
                                    <div class="ribbon-large"> <div class="ribbon-inner">POPULAR</div> </div>
                                	<h4><sup>$</sup>179<span class="per-month">/month</span></h4>
                                	<h5> Professional </h5>
                                    <div class="spacer spacer-t20 spacer-b20"></div>
                                	<p>For large enterprises selling over one million plus a year.</p>
                                    <div class="spacer spacer-t20 spacer-b20"></div>
                                    <a href="#" class="button btn-primary block pushed expand"> Learn more </a>
                                </div><!-- end .price-box section -->
                                
                            </div><!-- end .section section -->
                        </div><!-- end .colm section -->
                                                                   
                    </div><!-- end frm-row section -->
                    
                    <div class="spacer-t20 spacer-b40">
                    	<div class="tagline"><span> Google Map </span></div><!-- .tagline -->
                    </div><!-- end .spacer section -->                    
                    
                    <div class="section">
                        <div class="map-container">
                            <div id="map_canvas"></div>
                        </div><!-- end .map-container -->                    
                    </div><!-- end .section -->
                    
                    <div class="spacer-t40 spacer-b40">
                    	<div class="tagline"><span> Notifications + Progress Bars </span></div><!-- .tagline -->
                    </div><!-- end .spacer section -->
                    
                    <div class="section">
                    
                        <div class="progress-bar progress-animated bar-primary">
                            <div class="bar"></div>
                            <div class="percent"></div>
                        </div> <!-- end .progress-bar -->                    
                    
                    	
                        <div class="progress-bar bar-primary spacer-t10">
                            <div class="bar"></div>
                            <div class="percent"></div>
                        </div> <!-- end .progress-bar -->
                        
                        <div class="progress-bar bar-green spacer-t10">
                            <div class="bar"></div>
                            <div class="percent"></div>
                        </div> <!-- end .progress-bar -->
                        
                        <div class="progress-bar bar-red spacer-t10">
                            <div class="bar"></div>
                            <div class="percent"></div>
                        </div> <!-- end .progress-bar -->
                        
                        <div class="progress-bar bar-yellow spacer-t10">
                            <div class="bar"></div>
                            <div class="percent"></div>
                        </div> <!-- end .progress-bar -->
                        
                        <div class="progress-bar bar-purple spacer-t10">
                            <div class="bar"></div>
                            <div class="percent"></div>
                        </div> <!-- end .progress-bar -->
                        
                        <div class="progress-bar bar-black spacer-t10">
                            <div class="bar"></div>
                            <div class="percent"></div>
                        </div> <!-- end .progress-bar -->                        
                        
                        <div class="progress-bar bar-blue spacer-t10">
                            <div class="bar"></div>
                            <div class="percent"></div>
                        </div> <!-- end .progress-bar -->                                                                                                                       
                    
                        <div class="notification alert-info spacer-t10">
                            <p>Info Notification </p>
                            <a href="javascript:;" class="close-btn">&times;</a>                                  
                        </div><!-- end .notification section -->
                        
                        <div class="notification alert-success spacer-t10">
                            <p>Success Notification</p>
                            <a href="javascript:;" class="close-btn">&times;</a>                                  
                        </div><!-- end .notification section -->
                        
                        <div class="notification alert-warning spacer-t10">
                            <p>Warning Notification</p>
                            <a href="javascript:;" class="close-btn">&times;</a>                                  
                        </div><!-- end .notification section -->
                        
                        <div class="notification alert-error spacer-t10">
                            <p>Error Notification</p>
                            <a href="javascript:;" class="close-btn">&times;</a>                                  
                        </div><!-- end .notification section -->                                                                         
                                           
                    </div><!-- end .section section -->                                                                                                     
                                                                                     
                    
                </div><!-- end .form-body section -->
                <div class="form-footer">
                	<button type="submit" class="button btn-primary">Proceed to confirm </button>
                </div><!-- end .form-footer section -->
            </form>
            
        </div><!-- end .smart-forms section -->
    </div><!-- end .smart-wrap section -->
    
    <div></div><!-- end section -->

</body>
</html>
