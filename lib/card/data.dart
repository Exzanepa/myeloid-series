import 'package:flutter/material.dart';

class information{
  String title;
  String description;
  String imageUrl;
  String year;

  information(
    { required this.title,
    required this.description,
    required this.imageUrl,
    required this.year});
}

List<information> informationList = [
  information(
  title:'Neutrophil ',
  description:'Neutrophil hypersegmentation can be defined as the presence of neutrophils whose nuclei have six or more lobes or the presence of more than 3% of neutrophils with at least five nuclear lobes.[1] This is a clinical laboratory finding. It is visualized by drawing blood from a patient and viewing the blood smeared on a slide under a microscope. Normal neutrophils are uniform in size, with an apparent diameter of about 13 μm in a film. When stained, neutrophils have a segmented nucleus and pink/orange cytoplasm under light microscope. The majority of neutrophils have three nuclear segments (lobes) connected by tapering chromatin strands. A small percentage have four lobes, and occasionally five lobes may be seen. Up to 8% of circulating neutrophils are unsegmented (‘band’ forms).',
  imageUrl: 'lib/icons/Hypersegmented_Neutrophils.jpg',
  year: 'Hypersegmented Neutrophil',
  ),
  information(
  title:'Atypical lymphocytosis ',
  description:'Atypical lymphocytosis is definite when 20 per cent or more of the mononuclear cells are atypical lymphocytes. To evaluate lymphocyte morphology properly fingertip capillary blood is preferred, or as an alternate, freshly smeared anticoagulated blood.',
  imageUrl: 'lib/icons/Atypical-lymphocytosis.png',
  year: "Atypical lymphocytosis",
  ),
  information(
  title:'Hypereosinophil ',
  description:"Eosinophilia is a condition in which the eosinophil count in the peripheral blood exceeds 5×108/L (500/μL).[1] Hypereosinophilia is an elevation in an individual's circulating blood eosinophil count above 1.5 x 109/L (i.e. 1,500/μL). The hypereosinophilic syndrome is a sustained elevation in this count above 1.5 x 109/L (i.e. 1,500/μL) that is also associated with evidence of eosinophil-based tissue injury.",
  imageUrl: 'lib/icons/Eosinophils_in_peripheral_blood.jpg',
  year: "Hypereosinophil",
  ),
  information(
  title:'Döhle bodies  ',
  description:'Döhle bodies are single or multiple blue cytoplasmic inclusions that are remnants of rough endoplasmic reticulum. They are associated with myeloid left shifts and are seen in conjunction with toxic granulation. In the upper cell, they can be clearly seen near the cell membrane..',
  imageUrl: 'lib/icons/60048.jfif',
  year: "Döhle bodies ",
  ),
  information(
  title:'toxic granule neutrophil ',
  description:" A)  Peripheral blood smear shows neutrophils with toxic granulations, which are dark coarse granules. A Döhle body is also seen B) neutrophil with toxic granulations, vacuoles (another toxic change), and a Döhle body (arrow). These abnormalities are characteristic of toxic systemic illnesses.",
  imageUrl: "lib/icons/Toxicgranulations.jpg",
  year: "toxic granule neutrophil",
  ),
  

  
];
