<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/Practitioner-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/Practitioner-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/Practitioner-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/Practitioner-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/Practitioner-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/Practitioner-"+id+".xml");
  else if (id == "PrestadorMedInternaClIpsEjemplo")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/0.2.0/Practitioner-PrestadorMedInternaClIpsEjemplo.html");
  else if (id == "PrestadorMedFamiliarClIpsEjemplo")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/0.2.0/Practitioner-PrestadorMedFamiliarClIpsEjemplo.html");
  else if (id == "index")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/Practitioner.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from \0.2.0\crpractitioner.asp) .
</body>
</html>
