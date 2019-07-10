function pwd()
{
    var Pass =  document.getElementById('Pass').value;
    var Name =  document.getElementById('Name').value;
    var Name1 = /^[A-Za-z]\w{3,14}/;
    var Pass1 = /\w{7,14}$/;
    if(Name1.test(Name)){}
    else if(Name1.test(Name)===false) 
    {   
        document.getElementById("t1").value="First carachter cant be a digit";
        document.getElementById("Name").style.color="red";  
    }
    else if(Pass1.test(Pass)){}
    else{ 
         document.getElementById("t1").value="min 6 char required for password";
         document.getElementById("Pass").style.color="red";  
        }

 }
   
