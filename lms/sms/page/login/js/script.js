

function get_value(div){
  return document.getElementById(div).value;
}

function set_html(div,text){
  document.getElementById(div).innerHTML=text;
}


function login_area(per){
    document.getElementById("login_body").style.display=per;
    document.getElementById("loader_area").style.display=(per=="block")?"none":"block";
}

 function login(){
    uname=get_value('uname');
    pass=get_value('pass');
    document.getElementById("error_msg").style.display="none";
    login_area("none");
     $.ajax({
        type: 'POST',
        data: {
            login: uname,
            uname: uname,
            pass: pass
        }, 
        beforeSend: function() {
              

        },
        success: function(response) {
          response=JSON.parse(response);
          setTimeout(function () {
                fun_wait(response);
           }, 1000); 
          
        }
    }); 
           
  }

  function fun_wait(data){

      if(data.error==0)location.reload();
      else{
          document.getElementById("error_msg").style.display="block";
          set_html("error_msg_text",data.error_msg);
          login_area("circle");
      }
  }

