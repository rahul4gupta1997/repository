<%@include file="header.jsp" %> 

<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // Http 1.1
	
	response.setHeader("Progma", "no-cache"); //Http 1.0
	
	response.setHeader("Exprires", "0"); // proxies

   %>
<%@ include file="inc/nav.jsp" %>

<div class="d-flex flex-row">
<div class="col-9 m-5">
<form name="register col-9" action="transferDao" method="post"  class="py-4" >
<table class="table table-striped">
<thead>
    <tr class="">
	    <th scope="col" colspan="2"><label>Enter Beneficiary Account Number</label></th>
	    <td class="justify-content-center"><input type="text" class="form-control" name="B_name" placeholder="Enter Beneficiary Account" required ></td>
  	</tr>
</thead>
<tbody>s
  <tr>
	    <th scope="col" colspan="2"><label>Enter IFS Code</label></th>
	    <td><input type="text" class="form-control" name="B_name" placeholder="Enter Account" required ></td>
  	</tr>
  <tr>
	    <th scope="col" colspan="2"><label>Enter Amount</label></th>
	    <td><input type="text" class="form-control" name="B_name" placeholder="Enter Beneficiary Account" required ></td>
  	</tr>
  	<tr>
        <td>     <button type="submit"  name="submit" value="submit" class="btn btn-small p-3 m-3 px-lg-5">Proceed</button> </td>
             
         <td>     <input type="reset" value="Cancel" class="btn btn-small m-3 px-lg-5"/></td>
          
  	</tr>
  </tbody>
</table>
</form>
</div>
<div class="col-3">
<div class="d-flex flex-column">
	<ul>
	    <li><a href="summary.jsp">Summary</a></li>
		<li><a href="Transfer.jsp">Payment</a></li>
		<li><a href="balance.jsp">Account Statement</a></li>
	</ul>			
</div>
</div>
</div>


 <%@include file="footer.jsp" %>