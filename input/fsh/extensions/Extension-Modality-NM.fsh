//Head
Extension: MII_EX_Bildgebung_Modalitaet_NM
Id: mii-ex-bildgebung-modalitaet-nm
Title: "MII EX Bildgebung Modalität PT/NM"
Description: "Die Extension ermöglicht es die Ressourcen und Machbarkeitsanalysen auf NM Daten zu erweitern."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/mii-ex-bildgebung-modalitaet-nm"
//Translation
* insert Translation(^name, en-US, MII_EX_Imaging_Modality_NM)
* insert Translation(^title, en-US, MII EX Imaging Modality NM)
* insert Translation(^description, en-US, The extension allows to extend the resources and feasibility analysis to NM data.)
//Meta
* insert PR_CS_VS_Version
* insert LicenseCodeableCCBY40
* insert Publisher
* insert ExtensionContext(ImagingStudy.series)
* ^experimental = false
//Extension
* extension contains
    radiopharmaceutical 0..1 and
    radionuclide 0..1 and
    tracerExposureTime 0..1 and
    units 0..1 and
    radionuclideTotalDose 0..1 and
    radionuclideHalfLife 0..1 
* extension[radiopharmaceutical].value[x] only CodeableConcept
* extension[radiopharmaceutical].valueCodeableConcept from $radiopharmaceutical_NM (extensible)
* extension[radiopharmaceutical].valueCodeableConcept.text MS
* extension[radionuclide].value[x] only CodeableConcept
* extension[radionuclide].valueCodeableConcept from $radionuclide_NM (extensible)
* extension[radionuclide].valueCodeableConcept.text MS
* extension[tracerExposureTime].value[x] only SimpleQuantity
* extension[tracerExposureTime].valueQuantity.unit = "Seconds" 
* extension[tracerExposureTime].valueQuantity.system = "http://unitsofmeasure.org"
* extension[tracerExposureTime].valueQuantity.code = #s
* extension[units].value[x] only CodeableConcept
* extension[units].valueCodeableConcept from $units (extensible)
* extension[radionuclideTotalDose].value[x] only SimpleQuantity
* extension[radionuclideTotalDose].valueQuantity.unit = "Megabecquerel" 
* extension[radionuclideTotalDose].valueQuantity.system = "http://unitsofmeasure.org"
* extension[radionuclideTotalDose].valueQuantity.code = #MBq
* extension[radionuclideHalfLife].value[x] only SimpleQuantity
* extension[radionuclideHalfLife].valueQuantity.unit = "Seconds" 
* extension[radionuclideHalfLife].valueQuantity.system = "http://unitsofmeasure.org"
* extension[radionuclideHalfLife].valueQuantity.code = #s