<%@include file="header.jsp" %> 

<%
String u = "rahul";
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // Http 1.1	
response.setHeader("Progma", "no-cache"); //Http 1.0
response.setHeader("Exprires", "0"); // proxies
   %>
<%@ include file="inc/nav.jsp" %>


 <h1 class="text-center mt-5" style="font-weight: 500; font-size:30px;">Activate User id</h1><br>
        <form name="registeration" action="activateDao.jsp" method="post" class="p-4  m-5" >
          <div class="d-flex flex-row  align-item-center justify-content-center">
           <div class="input-group col-4 p-2">
     			 <label class="p-2 m-3">Date of Birth</label>
   		         <input type="date" name="Date" placeholder="Date_of_Birth" size="15" class="w-25 form-control p-2 m-4" required /> 
          </div>
          <div class="input-group col-4 p-2">
            	<label class="p-2 m-3">Account Number</label>
            	<input type="text" name="account_number" placeholder="Account_number" size="15" class="form-control p-2 m-4" required /> 
          </div>
          <div class="input-group col-4 p-2">
            	<label class="p-2 m-3">Enter Pan Card No.</label>
            	<input type="text" name="pan" placeholder="pan" size="15" class="form-control p-2 m-4" required /> 
          </div>
             </div>
			  <p class="text-center"><button type="submit" class="btn btn-warning  mt-3 px-lg-5">Register</button>    
			<button type="submit" class="btn btn-secondary  mt-3 px-lg-5">Cancel</button> </p>
        </form>
        
        
 <%@include file="footer.jsp" %>