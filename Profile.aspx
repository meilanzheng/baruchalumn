<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="baruchalumn.pages.WebForm2" %>


 

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <section id="content">
    <div class="container text-center">    
  <div class="row">
    <div class="col-sm-3 well">
      <div class="well">
        <p style="font-size:18px; color: #00008B"><strong>Welcome Alpha!</strong></p>
        <img src="img/avatar1.png" class="img-circle" height="75" width="75" alt="Avatar">
      </div>
      <div class="well">
        <p style="color:#00008B"><strong>Interests</strong></p>
        <p>
          <span class="label label-default" a href="events.html">Events</span></a>
          <span class="label label-primary" a href="#">News</span>
          <span class="label label-info" a href="#">Jobs</span>
          <span class="label label-success" a href="#">Calendar</span>   
        </p>
      </div>
      <div class="alert alert-info fade in">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
        <p><strong>Hey Alpha explore more!</strong></p>
        Find out upcoming events for August
      </div>
      <p><a href="#">Register For Events</a></p>
      <p><a href="#">Link</a></p>
      <p><a href="#">Link</a></p>
    </div>
    <div class="col-sm-7">
    
      <div class="row">
        <div class="col-sm-12">
          <div class="panel panel-default text-center">
            <div class="panel-body">
              <p style="font-size:18px; color: #00008B"><strong>MEMBER NAME</strong></p>
            </div>
          </div>
        </div>
      </div>
      
      <div class="row">
        <div class="col-sm-3">
          <div class="well">
           <p style="color:#00008B"><strong>Jobs</strong></p>
            <a href="#"><img src="img/job1.jpg" class="img-circle" height="75" width="95" alt="Avatar"></a>
          </div>
        </div>
        <div class="col-sm-9">
          <div class="well">
          	<ul style="color:#00008B"><strong></strong>
            <li>IT Intern Assistant and System Maintenance Art Research Collaboration</li>
            <li>Systems Service Desk Intern AlphaServe Technologies</li>
            <li>9/11 Memorial & Museum Visitor Services Volunteer</li>
            </ul>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-3">
          <div class="well">
             <p style="color:#00008B"><strong>Events</strong></p>
           <a href="events.html"><img src="img/job2.jpg" class="img-circle" height="85" width="95" alt="Avatar"></a>
          </div>
        </div>
        <div class="col-sm-9">
          <div class="well">
            <ul style="color:#00008B"><strong></strong>
            <li>Writing Winning Resumes<br> Aug 06, 2017 12:30 PM - 2:00 PM at 2-190 NVC</li>
            <li>Mastering the Job Interview: Basic<br> Aug 09, 2017 12:30 PM - 2:00 PM at 2-190 NVC</li>
            </ul>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-3">
          <div class="well">
            <p style="color:#00008B"><strong>Calendar</strong></p>
           <a href="events.html"><img src="img/job3.jpg" class="img-circle" height="85" width="95" alt="Avatar">
          </div>
        </div>
        <div class="col-sm-9">
          <div class="well">
            <p><div class="googleCalendar">
  			<iframe src="https://calendar.google.com/calendar/embed?title=Alpha%20Calendar%20&amp;showTitle=0&amp;showPrint=0&amp;showCalendars=0&amp;showTz=0&amp;height=700&amp;wkst=1&amp;bgcolor=%23000099&amp;src=amandapulla2%40gmail.com&amp;color=%2329527A&amp;ctz=America%2FNew_York" style="border:solid 1px #777" width="900" height="700" frameborder="0" scrolling="no"></iframe>
      
			</div></p>
        </div>
      </div> 
    </div>
  </div>
 	 <div class="row">
        <p style="font-size:18px; color: #00008B">Upcoming Events</p>
        <img src="img/job1.jpg" alt="" width="50" height="50">
        <p><strong>Final Exam!</strong></p>
        <p>Wednesday August 16Th Last Day of Summer Class!</p>
        <button class="btn btn-primary">Info</button>
      </div>
      </div>
      </div>
   
</section>
    
</asp:Content>
