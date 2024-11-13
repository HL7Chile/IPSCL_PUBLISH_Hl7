<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/StructureDefinition-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/StructureDefinition-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/StructureDefinition-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/StructureDefinition-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/StructureDefinition-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/StructureDefinition-"+id+".xml");
  else if (id == "Dispositivo-observador-cl-ips")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/0.2.0/StructureDefinition-Dispositivo-observador-cl-ips.html");
  else if (id == "Observation-uso-de-tabaco-cl-ips")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/0.2.0/StructureDefinition-Observation-uso-de-tabaco-cl-ips.html");
  else if (id == "Organizacion-cl-ips")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/0.2.0/StructureDefinition-Organizacion-cl-ips.html");
  else if (id == "AllergiaInt-cl-ips")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/0.2.0/StructureDefinition-AllergiaInt-cl-ips.html");
  else if (id == "Speciment-cl-ips")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/0.2.0/StructureDefinition-Speciment-cl-ips.html");
  else if (id == "Observation-resultado-del-embarazo-cl-ips")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/0.2.0/StructureDefinition-Observation-resultado-del-embarazo-cl-ips.html");
  else if (id == "Bundle-documento-ips-cl")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/0.2.0/StructureDefinition-Bundle-documento-ips-cl.html");
  else if (id == "Parametros-entradas-ips-cl")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/0.2.0/StructureDefinition-Parametros-entradas-ips-cl.html");
  else if (id == "MedicationRequest-cl-ips")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/0.2.0/StructureDefinition-MedicationRequest-cl-ips.html");
  else if (id == "DiagnosticReport-cl-ips")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/0.2.0/StructureDefinition-DiagnosticReport-cl-ips.html");
  else if (id == "Observation-uso-de-alcohol-cl-ips")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/0.2.0/StructureDefinition-Observation-uso-de-alcohol-cl-ips.html");
  else if (id == "Observation-resultado-laboratorio-patologico-cl-ips")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/0.2.0/StructureDefinition-Observation-resultado-laboratorio-patologico-cl-ips.html");
  else if (id == "RolPrestador-cl-ips")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/0.2.0/StructureDefinition-RolPrestador-cl-ips.html");
  else if (id == "Composition-cl-ips")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/0.2.0/StructureDefinition-Composition-cl-ips.html");
  else if (id == "Observation-embarazo-fecha-estimada-de-parto-cl-ips")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/0.2.0/StructureDefinition-Observation-embarazo-fecha-estimada-de-parto-cl-ips.html");
  else if (id == "Observation-estado-del-embarazo-cl-ips")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/0.2.0/StructureDefinition-Observation-estado-del-embarazo-cl-ips.html");
  else if (id == "Inmunizacion-cl-ips")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/0.2.0/StructureDefinition-Inmunizacion-cl-ips.html");
  else if (id == "Condition-cl-ips")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/0.2.0/StructureDefinition-Condition-cl-ips.html");
  else if (id == "Dispositivo-cl-ips")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/0.2.0/StructureDefinition-Dispositivo-cl-ips.html");
  else if (id == "ImagingStudy-cl-ips")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/0.2.0/StructureDefinition-ImagingStudy-cl-ips.html");
  else if (id == "Prestador-cl-ips")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/0.2.0/StructureDefinition-Prestador-cl-ips.html");
  else if (id == "Declaracion-uso-dispositivo-cl-ips")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/0.2.0/StructureDefinition-Declaracion-uso-dispositivo-cl-ips.html");
  else if (id == "RegMedicamentos-cl-ips")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/0.2.0/StructureDefinition-RegMedicamentos-cl-ips.html");
  else if (id == "Procedimientos-cl-ips")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/0.2.0/StructureDefinition-Procedimientos-cl-ips.html");
  else if (id == "Flag-alerta-cl-ips")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/0.2.0/StructureDefinition-Flag-alerta-cl-ips.html");
  else if (id == "Observation-resultado-radiology-cl-ips")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/0.2.0/StructureDefinition-Observation-resultado-radiology-cl-ips.html");
  else if (id == "Medicamento-cl-ips")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/0.2.0/StructureDefinition-Medicamento-cl-ips.html");
  else if (id == "Paciente-cl-ips")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/0.2.0/StructureDefinition-Paciente-cl-ips.html");
  else if (id == "index")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clips/StructureDefinition.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from \0.2.0\crstructuredefinition.asp) .
</body>
</html>
