

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  
  
  
  
  
  
 
<meta name="keywords" content="HTML Meta tags,Metadata"/>
<meta name="description" content="HTML Meta tags,Metadata"/>
<meta name="revised" content="jdjg,3/7/2014"/>



  </head>
  
  <body>
  <p>HTML5</p>
  
  
  <img src="" name="Rotating" id="Rotating1" width=500 height=500>
  <img src="" name="Rotating" id="Rotating2" width=300 height=300>
  
  
  <script language="JavaScript">
  var ImageArr1 = new Array("adpass.jpg","afterlogin.jpg","b.jpg");
  var ImageHolder1 = document.getElementById('Rotating1');
  
  var ImageArr2 = new Array("del.jpg","m.jpg","fac.jpg");
  var ImageHolder2 = document.getElementById('Rotating2');
  
  function RotateImages(whichHolder,Start)
  {
  	var a = eval("ImageArr"+whichHolder);
  	var b = eval("ImageHolder"+whichHolder);
  	if(Start>=a.length)
  		Start=0;
  	b.src = a[Start];
  	window.setTimeout("RotateImages("+whichHolder+","+(Start+1)+")",1500);
  }
  
  RotateImages(1,0);
  RotateImages(2,0);
  
  </script>
  
  
  <ul class="dropdown-menu">

      <li><a href="/android/index.htm" title="Android Tutorial">Android Tutorial</a></li>
      <li><a href="/ios/index.htm" title="iPhone Tutorial">iPhone Tutorial</a></li>
      <li><a href="/phonegap/index.htm" title="PhoneGap Tutorial">PhoneGap Tutorial</a></li>
      <li><a href="/management_tutorials.htm" title="Management Tutorials">Management Tutorials</a></li>
      <li><a href="/software_quality_tutorials.htm" title="Software Quality Tutorials">Software Quality Tutorials</a></li>
      <li><a href="/telecom_tutorials.htm" title="Telecom Tutorials">Telecom Tutorials</a></li>

      <li><a href="/misc_tutorials.htm" title="Miscellaneous Tutorials">Miscellaneous Tutorials</a></li>
   </ul>
  
  
  
    <li class="dropdown">

   <a class="dropdown" href="/computer_programming_tutorials.htm">
   Programming
   </a>
   </li>
   <li class="dropdown">
   <a class="dropdown" href="/java_technology_tutorials.htm">
   Java
   </a>
   </li>
   <li class="dropdown">

   <a class="dropdown" href="/web_development_tutorials.htm">
   Web
   </a>
   </li>
   <li class="dropdown">
   <a class="dropdown" href="/database_tutorials.htm">
   Database
   </a>
   </li>
   <li class="dropdown">

   <a class="dropdown" href="/academic_tutorials.htm">
   Academic
   </a>
   </li>
  </body>
</html>
