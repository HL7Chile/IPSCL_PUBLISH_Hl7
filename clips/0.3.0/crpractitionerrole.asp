<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/PractitionerRole-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/PractitionerRole-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/PractitionerRole-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/PractitionerRole-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/PractitionerRole-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/PractitionerRole-"+id+".xml");
  else if (id == "RolProfesionalMedInternaCLEjemplo")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/0.3.0/PractitionerRole-RolProfesionalMedInternaCLEjemplo.html");
  else if (id == "RolProfesionalCLEjemplo")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/0.3.0/PractitionerRole-RolProfesionalCLEjemplo.html");
  else if (id == "index")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/PractitionerRole.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from \0.3.0\crpractitionerrole.asp) .
</body>
</html>
