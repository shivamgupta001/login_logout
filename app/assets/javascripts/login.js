function validate(email,pass){
  if(email.value==''||pass.value=='')
     { alert("* field cannot be empty");
       return false;
     } 
  var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
  if (reg.test(email.value) == false) 
  {
  alert('Invalid Email Address');
  return false;
  }  
  return true;
}

