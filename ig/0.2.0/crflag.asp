<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/Flag-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/Flag-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/Flag-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/Flag-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/Flag-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/Flag-"+id+".xml");
  else if (id == "FlagAlertEjemplo")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/0.2.0/Flag-FlagAlertEjemplo.html");
  else if (id == "index")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/Flag.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from \0.2.0\crflag.asp) .
</body>
</html>
