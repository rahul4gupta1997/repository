//whatsapp chat 
    var url = 'https://wati-integration-service.clare.ai/ShopifyWidget/shopifyWidget.js?18172';

    var s = document.createElement('script');

    s.type = 'text/javascript';

    s.async = true;

    s.src = url;

    var options = {

  "enabled":true,

  "chatButtonSetting":{

      "backgroundColor":"#4dc247",

      "ctaText":"Digifa Bank",

      "borderRadius":"20",

      "marginLeft":"0",

      "marginBottom":"50",

      "marginRight":"50",

      "position":"right"

  },

  "brandSetting":{

      "brandName":"Digifa Bank Of India",

      "brandSubTitle":"Open a Digital Saving and Current Account",

      "brandImg":"image/logo_2.ico",

      "welcomeText":"Hi there!\nHow can I help you?",

      "messageText":"Hi, I want to open a New Bank Account",

      "backgroundColor":"#0a5f54",

      "ctaText":"Start Chat",

      "borderRadius":"25",

      "autoShow":false,

      "phoneNumber":"919996291540"

  }

};

    s.onload = function() {

        CreateWhatsappChatWidget(options);

    };

    var x = document.getElementsByTagName('script')[0];

    x.parentNode.insertBefore(s, x);

$(document).ready(function(){
     $('#dataTables').DataTable();

$("input").change(function(){
	 $('.error').hide();
           var value =  $('#aadhar').val();
				console.log(value.length);
             if(value.length!=12){
			console.log("value");
				$('.error').show();
                    $('.error').append("<p>Please Enter Correct Aadhar id</p>");
               }else{
					console.log("value" + value);
					$('.error').empty();
					$('.error').hide();	
				}
				
               });
  });