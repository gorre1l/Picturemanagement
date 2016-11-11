        var rside=10;
        var lside=-38;
        var lspace=0;
        var check;  
$(document).ready(function(){
     	var sds = document.getElementById("dum");
    if(sds == null){
        alert("You are using a free package.\n You are not allowed to remove the copyright.\n");
    }
    var sdss = document.getElementById("dumdiv");
    if(sdss == null){
        alert("You are using a free package.\n You are not allowed to remove the copyright.\n");
    }
   if(sdss != null){
                  $(function() {
interval=setInterval("auto()",100);
});
  
     auto();
    }

});
  function auto()
{
   
if (check == 1)
{
    lspace++;
    
}
else
{
lspace--;
}
if (lspace == rside)
{
check = -1;
}
else if (lspace == lside)
{
    check = 1;
}
        $("#spintext").animate({letterSpacing:lspace+"px"},100);
    }


