<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/DiagnosticReport-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/DiagnosticReport-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/DiagnosticReport-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/DiagnosticReport-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/DiagnosticReport-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/DiagnosticReport-"+id+".xml");
  else if (id == "DiagnosticReportLab-CL-Ejemplo")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/0.3.0/DiagnosticReport-DiagnosticReportLab-CL-Ejemplo.html");
  else if (id == "DiagnosticReportAlergia-CL-Ejemplo")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/0.3.0/DiagnosticReport-DiagnosticReportAlergia-CL-Ejemplo.html");
  else if (id == "index")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/DiagnosticReport.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from \0.3.0\crdiagnosticreport.asp) .
</body>
</html>
