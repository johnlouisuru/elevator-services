 $(document).ready(function() {
     
      
     $('#submit').on("click", function() {
     	//alert('you clicked');
      //var sel2 = $(".toast-body");
      
      //alert();
      //return;
          if (confirm("Detail Confirmation: Proceed to Maintenance Mode?") == true) {
            //$('.modal').show();
            //var hatol = $('#hatol').val();
              //var sel2 = $(".toast-body");

             /*var formData = {
                  hatol_ : 1
                };*/
              $.ajax({
                  type: "POST",
                  url: "functions.php",
                  //data: formData,
                  //timeout: 15000,
                  dataType: "json",
                  encode: true,
                }).done(function(data) {
                	alert('e4yyyy');
                  /*$('.modal').hide();
                  var sel2 = $(".toast-body");
                  sel2.empty();
                  sel2.append(JSON.parse(data['message']));
                  $('.toast').toast('show');*/
                }).fail (function(jqXHR, textStatus, errorThrown, exception) { 
                	alert(textStatus);
                    //if (jqXHR.status === 0) {
                
                //ERR_CONNECTION_REFUSED hits this one
                  /*} else if (jqXHR.status == 404) {
                      alert('Requested page not found. [404]');
                  } else if (jqXHR.status == 500) {
                     alert('Internal Server Error [500].');
                  } else if (exception === 'parsererror') {
                      alert('Requested JSON parse failed.');
                  } else if (exception === 'timeout') {
                      alert('Time out error.');
                  } else if (exception === 'abort') {
                      alert('Ajax request aborted.');
                  } else {
                      alert('Uncaught Error. -> ' + jqXHR.textStatus);
                  }*/
                    //alert(textStatus+' AND '+errorThrown); 
                    //alert(JSON.parse(data['message'])); 
                    //console.warn(xhr.responseText);
                    //alert(xhr.responseText);
                });
          } else {
            //$('.modal').hide();
          }
        
      
          

             event.preventDefault();
     });
     
     
    });