        <nav class="navbar navbar-expand-lg navbar-light sticky-top">
		 <div class="p-2 d-flex align-item-start">
	                   <img src="image/logo_3.ico" alt="" width="80" height="80">
	                </div>
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>
		  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
		    <div class="navbar-nav">
		   
		    <a href="index.jsp">Home</a>
			<a href="index.jsp#about">About</a>
		
			<a href="index.jsp#contact">Contact</a>
			 <% if(session.getAttribute("name") == null){ %> 	
			<a href="index.jsp#login">Login</a>
			<a href="register.jsp">Register</a>
		   <a href="activate.jsp">Activate User</a>
		   <% } else { %> 
		   
   <a href="issueCheque.jsp">Cheque Book</a>
    <a href="balance.jsp">Account Statement</a>
<a href="transfer.jsp">Fund Transfer</a>
	  <a href="summary.jsp">Summary</a>
	   <a href="logout.jsp">log out</a>
	         <% } %>
		    </div>
		  </div>
</nav>