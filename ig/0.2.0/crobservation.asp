<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/Observation-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/Observation-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/Observation-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/Observation-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/Observation-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/Observation-"+id+".xml");
  else if (id == "ObservacionEstadoEmbarazoEjemplo")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/0.2.0/Observation-ObservacionEstadoEmbarazoEjemplo.html");
  else if (id == "LabPatologia-CL-Ejemplo")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/0.2.0/Observation-LabPatologia-CL-Ejemplo.html");
  else if (id == "ObservacionResultadoEmbarazoEjemplo")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/0.2.0/Observation-ObservacionResultadoEmbarazoEjemplo.html");
  else if (id == "ObservacionFechaEstimadaPartoEjemplo")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/0.2.0/Observation-ObservacionFechaEstimadaPartoEjemplo.html");
  else if (id == "ResultadoRadiologyCLEjemplo")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/0.2.0/Observation-ResultadoRadiologyCLEjemplo.html");
  else if (id == "ObservacionConsumoTabacoEjemplo")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/0.2.0/Observation-ObservacionConsumoTabacoEjemplo.html");
  else if (id == "ObservacionConsumoAlcoholEjemplo")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/0.2.0/Observation-ObservacionConsumoAlcoholEjemplo.html");
  else if (id == "index")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/Observation.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from \0.2.0\crobservation.asp) .
</body>
</html>
