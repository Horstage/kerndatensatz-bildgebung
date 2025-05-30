---
parent:
topic: ImagingStudyExtensionImagingReason
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-bildgebungsgrund
---

## Extension Bildgebungsgrund

Diese Extension dient zum Anlegen des Grundes für die Bildgebung. Dieser ist zwar ebenso über eine Referenz in der ImagingStudy abgebildet, in diesem Attribut soll jedoch der Wert aus dem entsprechenden DICOM Tag (Reason for the Requested Procedure Attribute [0040,1002]) genutzt werden.

@```
from
    StructureDefinition
where
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-bildgebungsgrund'
select
    Name: name, Status: status, Version: version, Canonical: url, Basis: baseDefinition
```

### Inhalt

<tabs>
  <tab title="Darstellung">{{tree, buttons}}</tab>
  <tab title="Beschreibung">
        @```
        from
	        StructureDefinition
        where
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-bildgebungsgrund'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from
            StructureDefinition
        where
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-bildgebungsgrund'
        for
            differential.element
            where
                mustSupport = true
            select Feldname: id, Kurzbeschreibung: short, Hinweise: comment
        ```
  </tab>
  <tab title="XML">{{xml}}</tab>
  <tab title="JSON">{{json}}</tab>
  <tab title="Link">{{link}}</tab>
</tabs>

--- 
**Beispiele**

| Hinweis |  |
|---------|---------------------|
| {{render:implementation-guides/ImplementationGuide-Common/images/Warning.jpg}} | Aus Gründen der Übersichtlichkeit wurde in diesem Beispiel darauf verzichtet, alle dazugehörigen Serien bzw. Instanzen mit einzubinden. Natürlich ist es bei der Implementierung vorgesehen, dass alle zur jeweiligen Studie gehörenden Serien und Instanzen auch in der resultierenden FHIR-Ressource enthalten sind - dafür wird dann einfach die Sequenz "series" bzw "instance" für jede Serie bzw. Instanz wiederholt und mit den entsprechenden Werten befüllt.|

Beispiele von ImagingStudy-Ressourcen mit der Extension für den Bildgebungsgrund:

Beispiel eines CTs:
{{json:fsh-generated/resources/ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-ct.json}}

Beispiel eines MRTs:
{{json:fsh-generated/resources/ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-mr.json}}

Beispiel eine Röntgenbilds:
{{json:fsh-generated/resources/ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-cr.json}}

Beispiel eines PET-Scans:
{{json:fsh-generated/resources/ImagingStudy-mii-exa-bildgebung-bildgebungsstudie-pt.json}}

---
