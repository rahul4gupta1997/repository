
<%@ page import="java.util.List"%>
<%@ page import="org.hibernate.Session" %> 
<%@ page import="org.hibernate.SessionFactory" %>
<%@ page import="org.hibernate.Transaction"  %>
<%@ page import="org.hibernate.cfg.Configuration" %>
<%@ page import="org.hibernate.query.Query" %>
<%@ include file="header.jsp" %> 
 <%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // Http 1.1
	 		
	response.setHeader("Progma", "no-cache"); //Http 1.0s
	 		
	 response.setHeader("Exprires", "0"); // proxiess
	
  %>

      <%@ include file="inc/nav.jsp" %>
           
 <h1 class=" text-center" style="font-weight: 500;">Online Banking System</h1><br>
<p class="container">In order to open an account in Digifa Bank we are requesting that you fill out the application form. Once you have filled out the form, you will be required to email the form and documentation to us. The original notarized documentation has to be submitted in online.</p>
        <form name="registeration" action="registerdoa.jsp" method="post" class="py-4" enctype="application/x-www-form-urlencoded">
          <div class="d-flex container align-item-end justify-content-center">
        <div class="input-group p-4">
		  <input type="text" name="first_name" placeholder= "Firstname" size="15" class="form-control"required /> 
          </div>
           <div class="input-group p-4">
            <input type="text" name="middle_name" placeholder="Middle Name" size="15"class="form-control" /> 
          </div>
          <div class="input-group p-4">
            <input type="text" name="last_name" placeholder="Lastname" size="15"class="form-control" required /> 
          </div>
    </div>
        <div class="d-flex container align-item-end justify-content-center">
     <div class="input-group p-4">
		  <input type="text" name="father_name" placeholder= "Father's Name" size="15"class="form-control" required />  
          </div>
          <div class="input-group p-4">
            <input type="text" name="mother_name" placeholder="Mother's Name" size="15" class="form-control" required />  
          </div>
    </div>
      <div class="d-flex container  align-item-end justify-content-center">
    <div class="input-group p-4">
		  <input type="text" name="city" placeholder= "City" size="15"  class="form-control" required />  
          </div>
          <div class="input-group p-4">
            <input type="text" name="state" placeholder="State" size="15" class="form-control" required /> 
          </div>
   
      <div class="input-group p-4"> 
			<input type="text" name="country" placeholder= "Country" size="15"  class="form-control"required />   
			</div>
			<div class="input-group p-4">
			  
			<input type="text" name="zipcode" placeholder= " zipcode"  maxlength="6" class="form-control" required/>
			</div>
  		 </div>
		  <div class="d-flex  container align-item-start justify-content-center">
			<div class="input-group p-4">
				
			     <input type="date" name="date_of_birth" id="myDate" title="Date of Birth" placeholder="Date of Birth" class="form-control" required>
			 
			 </div> 
			 <div class="input-group p-4">
			     <input type="text" name="place_of_birth" id="place_of_birth" placeholder="Place of Birth" class="form-control" required>
			 </div> 
			 	<div class="input-group p-4">  
		<input type="text" name="religion" placeholder="Religion" size="15" class="form-control" required />   
	 </div>
	 <div class="input-group p-4">  
		<input type="text" name="nationality" placeholder="nationality" size="15" class="form-control" required />   
	 </div>
			 </div>  
 	
<div class="d-flex container align-item-center p-3 justify-content-center">
	<select class="m-3 form-control" name="gender">
	    <option selected="Select Gender">Select Gender</option>
	    <option value="Male">Male</option>
	    <option value="Female">Female</option>
	    <option value="Other">Other</option>
  	</select>  

	<select class="m-3 form-control" name="category">
	    <option selected="">Select Category</option>
	    <option value="General">General</option>
	    <option value="SC">SC</option>
	    <option value="ST">ST</option>
	      <option value="OBC">OBC</option>
  </select>
  <select class="m-3 form-control" name="account_type">
	    <option selected="">Select Account Type</option>
	    <option value="Saving">Saving A/c</option>
	    <option value="Current">Current A/c</option>
  </select>  
</div>
<div class="d-flex container  align-item-end justify-content-center">
		<div class="input-group p-4">
			     <input type="text" name="marital_status" id="marital_status" placeholder="marital_status" class="form-control" required>
			 </div> 
	 <div class="input-group p-4">
		 <input type="text" placeholder="Enter Aadhar No." name="aadhar" id="aadhar" class="form-control" required />
	 </div>

	 <div class="input-group p-4">  
		<input type="text" name="pan" id="pan" placeholder="Pan No." pattern="[a-z]{5}[0-9]{4}[a-z]{1}" class="form-control" required />
	 </div>
	 </div>
    <div class="d-flex container  align-item-start justify-content-center">
	<div class="input-group p-4">      
		<input type="text" name="countrycode" placeholder="Country Code"  class="form-control" value="+91" size="2" style="width:10%;" /> 
		<input type="text" name="phone" placeholder="phone no." size="10" class="form-control" style="width:90%;" required/>   
   </div>
		
	<div class="input-group p-4">
		 <input type="email" placeholder="Enter Email" name="email" class="form-control" required />
	 </div>
	 
</div>  		  
<div class="container">
    <div class="form-floating  p-4">
		  <textarea class="form-control" name="home_address" placeholder="home_address" id="home_address" style="height: 100px"></textarea>
	</div>
	<div class="form-floating  p-4">
		  <textarea class="form-control"  name="street_address" placeholder="street_address" id="street_address" style="height: 100px"></textarea>
	</div>
	</div>
	<div class="d-flex container flex-column">
	<span>		<ul>
<li>Colored copy of Id Proof(s) (certified by lawyer or notary)</li>
<li>Proof of address (eg. Title deed, lease agreement, utility bill, bank statement)</li>
<li>Upload your Image.</li>
</ul>
</span>
<p>Attach Photograph</p><input type="file" placeholder="choose Aadhar Card" name="aadhar_img" required/>
<p>Attach Pan-card</p><input type="file" placeholder="choose Pan card" name="pan_img" required/>
<p>Attach Photograph</p><input type="file" placeholder="choose Your Photograph" name="photo" required/>
<p>Attach Signature</p><input type="file" placeholder="choose Your Signature" name="signature" required/>
<span>Beneficial owner of the fund in the account</li>
<li>I am the beneficial owner (or I am authorized to sign for the beneficial owner) of all the income/funds to which this form relates</li>
<li> The beneficial owner is not a US-connected person</li>
<li> The income/funds to which this form relates is not effectively connected with the conduct of a trade or business in the United States.</li>
</span>	
<span><input type="checkbox" name="term" value="" required/>I accept all the above Statement are true. IN case of any incorrect information a legal action is to be taken</span>
	
	</div>

	
		  <p class="text-center"><button type="submit" class="btn btn-warning  mt-3 px-lg-5">Register</button>    
		<button type="submit" class="btn btn-secondary  mt-3 px-lg-5">Cancel</button> </p>
		 <div class="container error"></div>
        </form>
       
<br>
<br>
<br><br>
<br>
<br><br>
<br>
<br>


 <%@include file="footer.jsp" %>