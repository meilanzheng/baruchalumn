<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="baruchalumn.WebForm1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    	<section id="featured">
	<!-- start slider -->
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
	<!-- Slider -->
        <div id="main-slider" class="flexslider">
            <ul class="slides">
              <li>
                <img src="img/slides/pic1.jpg" alt="" />
                <div class="flex-caption">
                    <h3>Register Now</h3> 
					<p>Do not miss anything and become part of our Alpha team!</p> 
					<a href="register.aspx" class="btn btn-theme">Sign Up!</a>
                </div>
              </li>
              <li>
                <img src="img/slides/pic2.jpg" alt="" />
                <div class="flex-caption">
                    <h3>Events</h3> 
					<p>Check what is upcoming for the month of August</p> 
					<a href="profile.aspx" class="btn btn-theme">Learn More</a>
                </div>
              </li>
              <li>
                <img src="img/slides/pic3.jpg" alt="" />
                <div class="flex-caption">
                    <h3>Who we are</h3> 
					<p>Wondering who is the Alpha Club? Everything you want to know and more. </p> 
					<a href="about.aspx" class="btn btn-theme">Learn More</a>
                </div>
              </li>
            </ul>
        </div>
	<!-- end slider -->
			</div>
		</div>
	</div>	
	</section>

	<section class="callaction">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="big-cta">
					<div class="cta-text">
						<h2 style = "color:#00008B">Alpha <button type="button" class="btn btn-info  btn-lg" id="myBtn">Login To Check Event Calendar</button></h2>
                        <!-- Modal -->
  						<div class="modal fade" id="myModal" role="dialog">
   						<div class="modal-dialog">
      					<!-- Modal content-->
      					<div class="modal-content">
        					<div class="modal-header" style="padding:35px 50px;">
          						<button type="button" class="close" data-dismiss="modal">&times;</button>
          					<h2 style = "color:white"><img src="img/avatar1.png" alt="Avatar" class="avatar">Hello Alpha</h2>
        					</div>
        						<div class="modal-body" style="padding:40px 50px;">
          						<form role="form" runat="server">
           						<div class="form-group">
              					<label for="usrname">Username</label>
              					 <asp:TextBox ID="UsernameTB" runat="server" class="form-control" ></asp:TextBox>
            					</div>
            					<div class="form-group">
              					<label for="psw">Password</label>
              					<asp:TextBox ID="passwordTB" runat="server" class="form-control" Type="password"></asp:TextBox>
            					</div>
            					<div class="checkbox">
              					<label><input type="checkbox" value="" checked>Remember me</label>
            					</div>
              					<asp:Button ID= "btnSubmit" runat="server" onclick="btnLogin_Click" Text="Submit" />
          						</form>
        						</div>
        						<div class="modal-footer">
          						<button type="submit" class="btn btn-info pull-left" data-dismiss="modal">Cancel</button>  
          						<p>Not a member? <a href="register.aspx">Sign Up</a></p>
         						<p>Forgot <a href="#">Password?</a></p>
        						</div>
      						</div>
    					 </div>
  					  </div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>


	<section id="content">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="row">
					<div class="col-lg-3">
						<div class="box">
							<div class="box-gray aligncenter">
								<h4 style = "color:#00008B">Networking</h4>
								
								<p>
								 Meet a number of our successful alumni. Whether it's professional accomplishments, serving the community, or realizing other personal goals, these alumni have all found success through their unique endeavors.
								</p>	
							</div>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="box">
							<div class="box-gray aligncenter">
								<h4 style = "color:#00008B">Get Involved</h4>
								<p>
								 Make sure to stay connected to fellow alumni and to your alma mater through our site, mentoring opportunities, and social media. Or help to admit the next generation of Baruch students by joining our Alpha team!
								</p>	
							</div>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="box">
							<div class="box-gray aligncenter">
								<h4 style = "color:#00008B"> Alpha Team Members</h4>
								<p>
								 CIS undergraduates Tenzin Gaywa and Johnnie Vasquez are our Business Analyst, Ruhel Ahmed is our Database Administrator followed by Amanda Pulla Lead Developer and Meilan Zheng Project Manager.
								 
								</p>		
							</div>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="box">
							<div class="box-gray aligncenter">
								<h4 style = "color:#00008B">Social Media</h4>
								
								<p>
								Wherever you are, stay connected to the Baruch alumni community by following us on social media! Check out the latest news, photos, and more on Facebook, Twitter, Instagram, and official LinkedIn group.
								</p>	
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- divider -->
		<div class="row">
			<div class="col-lg-12">
				<div class="solidline">
				</div>
			</div>
		</div>
		<!-- end divider -->
		<!-- Portfolio Projects -->
		<div class="row">
			<div class="col-lg-12">
				<h4 class="heading" style = "color:#00008B">Alpha Headlines</h4>
				<div class="row">
					<section id="projects">
					<ul id="thumbs" class="portfolio">
						<!-- Item Project and Filter Name -->
						<li class="col-lg-3 design" data-id="id-0" data-type="web">
						<div class="item-thumbs">
						<!-- Fancybox - Gallery Enabled - Title - Full Image -->
						<a class="hover-wrap fancybox" data-fancybox-group="gallery" title="Baruch College Students Take 1st, 2nd, and 3rd Place in 2016 Traders@MIT Fall Intercollegiate Trading Competition" href="img/works/work1.jpg">
						<span class="overlay-img"></span>
						<span class="overlay-img-thumb font-icon-plus"></span>
						</a>
						<!-- Thumb Image and Description -->
						<img src="img/works/work1.jpg" alt="NEW YORK, NY - November 16, 2016 - <br> Six undergraduate students from Baruch College won 1st, 2nd, and 3rd place at the 9th annual Traders@MIT Fall Intercollegiate Trading Competition – the largest trading competition of its kind in the country.  Baruch’s students numbered among the more than 100 undergraduate students, grouped into 48 teams, and representing 12 universities: MIT, Harvard, University of Pennsylvania, Princeton, Yale, Columbia, Cornell, UChicago, Wellesley, NYU, Boston University, and Baruch College.">
						<p>Baruch College Students Take 1st, 2nd, and 3rd Place in 2016 Traders@MIT Fall Intercollegiate Trading Competition</p>
						</div>
						</li>
						<!-- End Item Project -->
						<!-- Item Project and Filter Name -->
						<li class="item-thumbs col-lg-3 design" data-id="id-1" data-type="icon">
						<!-- Fancybox - Gallery Enabled - Title - Full Image -->
						<a class="hover-wrap fancybox" data-fancybox-group="gallery" title="Student Recognition" href="img/works/work2.jpg">
						<span class="overlay-img"></span>
						<span class="overlay-img-thumb font-icon-plus"></span>
						</a>
						<!-- Thumb Image and Description -->
						<img src="img/works/work2.jpg" alt="July-September<br> Baruch College MPA Graduates Earn Competetive New York Excelsior Service Fellowships (7/31/17)<br>Baruch College MFE Students Have a Grand Slam Year at Top Financial Competitions (7/20/17">
						<p>Baruch College MPA Graduates Earn Competetive New York Excelsior Service Fellowships</p>
						</li>
						<!-- End Item Project -->
						<!-- Item Project and Filter Name -->
						<li class="item-thumbs col-lg-3 photography" data-id="id-2" data-type="illustrator">
						<!-- Fancybox - Gallery Enabled - Title - Full Image -->
						<a class="hover-wrap fancybox" data-fancybox-group="gallery" title="Austin W. Marxe ('65) Dedication Ceremony" href="img/works/work3.jpg">
						<span class="overlay-img"></span>
						<span class="overlay-img-thumb font-icon-plus"></span>
						</a>
						<!-- Thumb Image and Description -->
						<img src="img/works/work3.jpg" alt="On Wednesday, May 24, Baruch College held a dedication ceremony formally celebrating Austin W. Marxe (’65) and his $30 million gift to the College. Announced in September 2016, the gift endowed and named the Austin W. Marxe School of Public and International Affairs at Baruch College.">
						<p>Austin W. Marxe ('65) Dedication Ceremony</p>
						</li>
						<!-- End Item Project -->
						<!-- Item Project and Filter Name -->
						<li class="item-thumbs col-lg-3 photography" data-id="id-2" data-type="illustrator">
						<!-- Fancybox - Gallery Enabled - Title - Full Image -->
						<a class="hover-wrap fancybox" data-fancybox-group="gallery" title="The Best Colleges for Your Money" href="img/works/work4.jpg">
						<span class="overlay-img"></span>
						<span class="overlay-img-thumb font-icon-plus"></span>
						</a>
						<!-- Thumb Image and Description -->
						<img src="img/works/work4.jpg" alt="BaruchCollege ranked #1 in Best Public Colleges & #2 Best Colleges for your Money by @MONEY. ">
						<p>The Best Colleges for Your Money</p>
						</li>
						<!-- End Item Project -->
					</ul>
					</section>
				</div>
			</div>
		</div>
	</div>
	</section>
</asp:Content>