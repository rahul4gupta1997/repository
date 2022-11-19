<%@ include file="header.jsp" %>
	   <header class="masthead text-center text-white">
	   <div class="d-flex flex-row">
    		<div class="d-flex flex-column">
	     		 <div class="masthead-content">
	             <div class="p-2 d-flex align-item-start">
	                   <img src="image/logo_3.ico" alt="">
	                </div>
	                <div class="p-2">
	                
	                    <span class="heading">DIGIFA Bank of India</span>
	                </div>
	            </div>
	            <div class="d-flex justify-content-end align-item-end sm-2s p-2 side">A Bank which on how we're reaching
	          		 <br> our goals, our latest milestones,<br>and what's coming up next
	            </div>
			</div>
			<div class="d-flex flex-column">
				<ul>
				  <li><a href="#home">Home</a></li>
				  <li><a href="#about">About</a></li>
				  <li><a href="#contact">E-Service</a></li>
				  <li><a href="#about">Contact</a></li>
				  <% if(session.getAttribute("name") == null){ %> 	
				  	  <li><a href="#login">Login</a></li>
				  	  	  <li><a href="register.jsp">New Register</a></li>
				  	  	   <% } else { %> 
     <li> <a href="balance.jsp">Account Statement</a></li>
     
     <li> <a href="issueCheque.jsp">Cheque Book</a></li>
  <li><a href="transfer.jsp">Fund Transfer</a></li>
	   <li> <a href="summary.jsp">Summary</a></li>
	     <li><a href="logout.jsp">log out</a></li>
	         <% } %>
				</ul>			
		
			</div>
  </div>
	   	     
        </header>
 <%@ include file="inc/nav.jsp"%>
 
 <%
 String str="The DIGIFA Bank Of India is a new Branch of Reserve Bank of India having its head office in Dwarka, New Delhi, India.  The DIGIFA Bank Of India is operating as a full-fledged Branch in Vadodara since 1978. The Branch currently serves Retail, Corporate and SME Customers ."; 
 String str2="The Bank offers a wide range of financial products and services including Opening new Savings and Current Accounts online, Corporate Banking Services, E-Banking, International Debit card facility and a host of other Banking services. Bank also provide possible assistance to customers banking with other branches / subsidiaries located in different countries.";
 %>
 
 <section class="strip p-4">
    <div class="d-flex flex-wrap align-item-end justify-content-center bd-highlight" id="about">
    <div class="pb-3 bd-highlight">
    <p class="px-3"><% out.print(str); %></p>
    <p class="px-3"><% out.print(str2); %></p>
    </div>
     <div class="pb-3 bd-highlight">
    	 <h1>Our Strategy</h1>
     </div>
     <div class="d-flex row pb-3 flex-wrap bd-highlight">
	  <div class="p-5 col-lg-3 col-12 d-flex flex-row  flex-wrap apply">
		    <li></li><br>
		    <span>Step 1</span><hr>
		    <span><a href="register.jsp">Apply for New Account</a></span><br>
		</div>
		<div class="p-5 col-lg-3 col-12 d-flex flex-row  flex-wrap apply">
		    <li></li><br>
		    <span>Step 2</span><hr>
		    <span><a href="register.jsp">Fill Necessary Information </a></span><br>
		</div>
		<div class="p-5 col-lg-3  col-12 d-flex flex-row  flex-wrap apply">
		    <li></li>
		    <span>Step 3</span><hr>
		    <span><a href="register.jsp">Provide valid Documents</a></span>
		</div>
		<div class="p-5  col-lg-3 col-12 d-flex flex-row  flex-wrap apply">
		    <li></li>
		    <span>Step 4</span><hr>
		    <span><a href="register.jsp">Authenticate your Account with Face Recognition</a></span>
		</div>
     </div>
</section>
<section class="strip3 m-4 p-4 ">
    <div class="d-flex flex-wrap align-item-end justify-content-center bd-highlight">
    <div class="pb-3 bd-highlight col-lg-6">
       <h1> Key to Mollifying The Consumers</h1>
    </div>
    <div class="pb-3 d-flex flex-row flex-wrap justify-content-start bd-highlight col-lg-6" style="display:block; background-image: url('');">
        <div class="sos p-4">
            <li> <span>Increased security</span></li>
            
        </div>
        <div class=" sos p-4">
            <li> <span>Faster processing</span></li>
            
        </div>
        <div class=" sos p-4">
            <li> <span>Greater convenience</span></li>
            
        </div>
        <div class=" sos p-4">
            <li> <span>Reduced crime</span></li>
        </div>
    </div>   
    </section>
 <section class="strip m-4 p-4">
    <div class="d-flex flex-wrap align-item-end justify-content-center bd-highlight">
    <div class="col-6 bd-highlight">
        <img src="image/4.jpg" alt=""  width="600" height="500">
    </div>
    <div class="col-6 bd-highlight" id="login">
      <div class="p-3  w-75 mx-auto border">
        <h1 class="h4 text-center" style="font-weight: 500;">Welcome to NetBanking</h1>
        <form name="register" action="login.jsp" method="post" onsubmit="" class="py-4" >
          <div class="input-group pb-4">
            <input type="text" class="form-control" name="Username" placeholder="User Name" required >
          </div>
          <div class="input-group pb-4">
            <input type="password" class="form-control" name="Password" placeholder="Enter password" required  />
          </div>
          <div class="form-group h5 ">
            <div class="">
           <a href="ForgetPassword.jsp" class="float-end" >Forgot Password &quest;</a></div>
          </div>
          
            <label class="form-check-label d-flex align-item-start">
             <button type="submit"  name="submit" value="submit" class="btn btn-small p-3 m-3 px-lg-5">Login</button> 
             
              <input type="reset" value="Reset" class="btn btn-small m-3 px-lg-5"/>
            </label>
        </form>
      </div> 

      <p class="border-top border-bottom w-75 mx-auto mt-3 py-2">Don&apos;t have an account? <a class="font-weight-bold" href="activate.jsp">Sign Up</a></p>
    </div>
</section>
<section class="strip1 m-4 p-4">
    <div class="d-flex flex-wrap flex-row-reverse align-item-end justify-content-center bd-highlight">
    <div class="col-6 bd-highlight">
        <img src="image/5.jpg" alt="" width="600" height="500">
    </div>
    <div class="col-6 bd-highlight" id="contact">
			<h2 class="text-center" style=" color: #fe0072; ">CONTACT US</h2>
			<p class="s4">Be in touch with us</p>
			<p class="s4">Corporate Office: 188/5 Parkash Nagar, Tehsil Camp, Panipat, Haryana, 132103 </p>
			<p class="s4">Phone NO. : +(91) 9996291540</p>
			<p class="s4">Email Id :  guptaji0406@gmail.com</p>
    </div>
</section>
	 <%@ include file="footer.jsp"%>
