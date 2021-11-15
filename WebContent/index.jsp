<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>  
<head>  
<script>  
var request;

function sendInfoForAjax1(value)  
{  
	var v=value;  
	var url="GetFirstname.jsp?val="+v;  
  	if(window.XMLHttpRequest)
  	{  
		request=new XMLHttpRequest();  
	}  
	else if(window.ActiveXObject)
	{  
		request=new ActiveXObject("Microsoft.XMLHTTP");  
	}  
  	try
  	{  
		request.onreadystatechange=getInfoForAjax1;  
		request.open("GET",url,true);  
		request.send();  
	}
  	catch(e)
  	{
  		alert("Unable to connect to server");
	}  
}  
  
function getInfoForAjax1()
{  
	if(request.readyState==4)
	{  
		var val=request.responseText;  
		document.getElementById('VaibhavDiv').innerHTML=val;
	}  
}

//For Ajax 2
var request2;
function sendInfoForAjax2(value)  
{  
	var v=value;  
	var url="GetLastname.jsp?val="+v;  
  	if(window.XMLHttpRequest)
  	{  
		request2=new XMLHttpRequest();  
	}  
	else if(window.ActiveXObject)
	{  
		request2=new ActiveXObject("Microsoft.XMLHTTP");  
	}  
  	try
  	{  
		request2.onreadystatechange=getInfoForAjax2;  
		request2.open("GET",url,true);  
		request2.send();  
	}
  	catch(e)
  	{
  		alert("Unable to connect to server");
	}  
}  
  
function getInfoForAjax2()
{  
	if(request2.readyState==4)
	{  
		var val=request2.responseText;  
		document.getElementById('VaibhavDiv').innerHTML=val;
	}  
}

</script>  
</head>  
<body align="Center">
    <marquee><h1>Ajax Demo for Prachi Part 2</h1></marquee>  
  	<input type="text" id='MyTB1' placeholder="First Name"/> <button onclick="sendInfoForAjax1(document.getElementById('MyTB1').value)">Search</button>
  <br>
  	<input type="text" id='MyTB2'  placeholder="Last Name" /> <button onclick="sendInfoForAjax2(document.getElementById('MyTB2').value)">Search</button>
<div id='VaibhavDiv'></div>
  
</body>  
</html>