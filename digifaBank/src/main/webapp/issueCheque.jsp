<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">

 <style>
                body{
                font-family: 'sans-serif';
                 font-size: 14px;
                }
                .heading{
					font-size: 3vw;
					padding-top: 5rem;
					padding-bottom: 5rem;
					color:#fe0072;
				}
                .inputtexts{
                    width: 15px;height: 15px;border:1px solid #999;padding: 0px;margin: -2px;
                }
                input{
                margin:0px;
                }
                @page{
                size: A4;
                }
                input[type="text"] {
                    font-size: 14px;
                }
                .slds-scope{
                border-radius: 25px;
                }
                @media print{
                border-radius: 10pt;
                }
            </style> 
            <script>
                function printFunction() { 
                  window.print(); 
                }
              </script>
<title>Issue Cheque book</title>
</head>
  <body >
            
       
              
                    <table  style="  border: 1px solid black;">
                        <tbody><tr><td width="100%" height="100%" style="font-size: 14px;">
                    <table width="100%">
                        <tbody>
                            <tr >
                                <td align="Start" style= "">
                                    <img width="80" src="image/digifa.png" />
                                </td>
                               <td align="center">  <span class="heading">DIGIFA Bank of India</span></td>
                                <td align="right">
                                    <table >
                                        <tr>
                                            <td style="font-weight:bold;">Date:</td>                                                           
                                            <td style="display:inline;">
                                                <input type="date" name="date" id="">
                                             </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                   
                    <table width="100%">
                        <tbody>                    
                            <tr valign="top">
                                <td valign="top">
                                    <table>
                                        <tr>
                                            <td>Tick( &#10004; )</td>
                                        </tr>
                                    </table>
                                    <table style= "border: 1px solid black; text-transform:uppercase;">
                                        <tr valign="top">
                                            <td style="font-weight:bold;">
                                               <input type="radio" name="Create" id=""> Withdrawal

                                            </td>
                                        </tr>
                                     </table>
                                </td>
                                <td valign="top">
                                    <table width="100%">
                                       
                                        <tr>
                                            
                                            <td style="font-weight:bold;">I/We hereby authorize</td>
                                            <td>
                                                <input type="text" value="Digifa Bank Of India" style="width:170px; font-size:13px;  height:25px; border:1px solid #999;">
                                                
                                            </td>
                                            <td style="font-weight:bold;">to Debit</td>
                                            <td >
                                                <input type="text" value="Saving bank" style="width:250px; font-size:13px; height: 15px; border:1px solid #999;" /> 
                                            </td>
                                        </tr>
                                        <tr valign="top">
                                            <td style="font-weight:bold;">Bank a/c number</td>
                                            <td style="" colspan="3">
                                                
                                                
                                                    <input type="text" class="inputtexts" />
                                                    <input type="text" class="inputtexts" />
                                                    <input type="text" class="inputtexts" />
                                                    <input type="text" class="inputtexts" />
                                                    <input type="text" class="inputtexts" />
                                                    <input type="text" class="inputtexts" />
                                                    <input type="text" class="inputtexts" />
                                                    <input type="text" class="inputtexts" />
                                                    <input type="text" class="inputtexts" />
                                                    <input type="text" class="inputtexts" />
                                                    <input type="text" class="inputtexts" />
                                                    <input type="text" class="inputtexts" />
                                                    <input type="text" class="inputtexts" />
                                                    <input type="text" class="inputtexts" />
                                                    <input type="text" class="inputtexts" />
                                                    <input type="text" class="inputtexts" />
                                                    <input type="text" class="inputtexts" />
                                                    <input type="text" class="inputtexts" />
                                                    <input type="text" class="inputtexts" />
                                                    <input type="text" class="inputtexts" />
                                                    <input type="text" class="inputtexts" />
                                                    <input type="text" class="inputtexts" />
                                                    <input type="text" class="inputtexts" />
                                                    <input type="text" class="inputtexts" />
                                                    <input type="text" class="inputtexts" />
                                                    <input type="text" class="inputtexts" />
                                                    <input type="text" class="inputtexts" />
                                                    <input type="text" class="inputtexts" />
                                                    <input type="text" class="inputtexts" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <table width="100%" height="50%">
                       
                            <tr valign="top">
                                <td>
                                    <table>
                                        <tr>
                                            <td style="font-weight:bold;">with Bank I</td>
                                            <td>
                                            
<input type="text" value="" placeholder="" style="width:500px; height:25px; border:1px solid #999;" />
                                   
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td style="padding-left:5px;">
                                    <table>
                                        <tr>
                                            <td style="font-weight:bold;">IFSC</td>
                                            <td style="display:inline;">
                                                
                                                    <input type="text" class="inputtexts" />
                                                    <input type="text" class="inputtexts" />
                                                    <input type="text" class="inputtexts" />
                                                    <input type="text" class="inputtexts" />
                                                    <input type="text" class="inputtexts" />
                                                    <input type="text" class="inputtexts" />
                                                    <input type="text" class="inputtexts" />
                                                    <input type="text" class="inputtexts" />
                                                    <input type="text" class="inputtexts" />
                                                    <input type="text" class="inputtexts" />
                                                    <input type="text" class="inputtexts" />
                                                    <input type="text" class="inputtexts" />
                                                    <input type="text" class="inputtexts" />
                                                    <input type="text" class="inputtexts" /> 
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                               
                            </tr>
                    </table>
                    <table >
                        <tbody>
                            <tr style="display:inline;" valign="top">
                                <td style="font-weight:bold;">
                                    An amount of rupees
                                </td>
                                <td style="padding-left:15px;">
                                    <input type="text" value="" placeholder="Rs." style="width:180px; height:25px; border:1px solid #999;" />
                                                    
                                </td>
                                <td style="font-weight:bold;">
                                    An amount of word
                                </td>
                                <td style="padding-left:5px;">
                                    <input type="text" value="" placeholder=" Rs." style="width:500px; height:25px; border:1px solid #999;" />
                                   
                                </td>
                                 
                            </tr>
                        </tbody>
                    </table>
            
                    <table>
                       
                            <tr style="display:content;" valign="top">
                                
                                           
                                       
                                            <td style="font-weight:bold;">
                                                Phone No.
                                            </td>
                                            <td style="padding-left: 15px;">
                                                
                                                <input type="number" id="monthly" name="monthly" value="" style="width:170px;  height:25px; border:1px solid #999;" />
                                            	
                                            </td>
                                        </tr>
                                    
                       
                    </table>
                
                    <table >
                        <tr style="display: content">
                           
                                            <td style="font-weight:bold;">
                                                Email ID
                                            </td>
                                            <td style="padding-left: 15px;">
                                                <input type="Email" id="monthly" name="monthly" value="" 
                                                    style="width:400px; height:25px; border:1px solid #999;" />
                                        
                                            </td>
                                        </tr>
          
                    </table>                
                    <table width="100%" >
                        <tbody>
                            <tr>
                                <td  style="padding-left: 171px;">
                                 <input type="checkbox" name="agree" id="">
                                      "I agree for the debit of mandate processing charges by the bank whom i authorizing to debit my account as per latest schedule of charge of the bank."
                                  
                                </td></tr>
                           <tr>
                                <td style= " ">
                                    <b>Valid Till</b>
                                </td></tr>
                                
                                <td>
                                    <input type="checkbox" name="" id="">
                                    Until Cancelled
                                </td>
                            </tbody></table>
                            <table >
                                
                            
                            <tr>
                                <td style= "width:50%;">
                                    <table style="  border: 1px solid black;">
                                        <tr>
                                            <td style="font-weight:bold;">
                                                From
                                            </td>
                                            <td style="display:inline;">
                                                <input type="date" name="" id="">
                                                
                                            </td>
                                        </tr>
                                        <tr >
                                            <td style="font-weight:bold;">
                                                To
                                            </td>
                                            <td >
                                                <input type="date" name="" id="">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="font-weight:bold;">
                                                or
                                            </td>
                                            <td>
                                                <input type="text" class="inputtexts" /> 
                                                Untill Cancelled
                                            </td>
                                        </tr>
                                    </table>
                                    
                                </td>
                                <td>
                                    <table width="300px">
                                        <tr >
                                            <td align="right">
                                                <table Style="float:right;">
                                                    <tr align="center">
                                                        <td>
                                                            -------------------
                                                        </td>
                                                        <td>
                                                            -------------------
                                                        </td>
                                                        <td>
                                                            -------------------
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td height="20"></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            --------------------
                                                        </td>
                                                        <td>
                                                            --------------------
                                                        </td>
                                                        <td>
                                                            --------------------
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            </table>
                                <table width="100%">
                                <tr><td style= "font-size:7px; text-align: center;" colspan="2">
                                    This is to confirm that the declaration has been carefully read, understood and made by me/us. I am authorizing the user entity/corporation to debit my account, based on the instructions as agreed and signed by me.
                                </td>
                            </tr>
                            <tr>
                                <td style= "font-size:7px; text-align: center;" colspan="3">
                                 I have understood that I am authorized to cancel/amend this mandate by appropriately communicating the cancellation/amendment request to the user entity/corporate or the bank where I have authorized and debit.
                                    
                                </td>
                            </tr>
							</table>                            
                   
                            </td></tr></tbody>
                    </table>
              
         
                    <button onclick="printFunction()"><a href="index.jsp">Click to Download</a></button>
        </body>
</html>