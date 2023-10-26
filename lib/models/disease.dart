class DiseaseModel {
  String name;
  List<String> avoid;
  List<String> suggest;

  DiseaseModel({
    required this.name,
    required this.avoid,
    required this.suggest,
  });

  static List<DiseaseModel> getdiseases() {
    List<DiseaseModel> diseases = [];

    diseases.addAll([
      DiseaseModel(
          name: "Endometriosis",
          avoid: [
            "Inflammatory foods",
            "Processed foods",
            "Excess caffeine",
            "Alcohol"
          ],
          suggest: [
            "Mediterranean diet",
            "Omega-3 fatty acids",
            "Regular exercise"
          ]
      ),
      DiseaseModel(
          name: "Infertility",
          avoid: [
            "Smoking",
            "Alcohol",
            "Caffeine",
            "Environmental toxins"
          ],
          suggest: [
            "Healthy diet",
            "Regular exercise",
            "Weight loss (if overweight or obese)"
          ]
      ),
      DiseaseModel(
          name: "Osteoarthritis",
          avoid: [
            "Excess weight",
            "Lack of physical activity"
          ],
          suggest: [
            "Weight loss (if overweight or obese)",
            "Regular exercise",
            "Strength training"
          ]
      ),
      DiseaseModel(
          name: "Glaucoma",
          avoid: [
            "High blood pressure",
            "Diabetes",
            "Smoking"
          ],
          suggest: [
            "Regular eye exams",
            "Healthy diet",
            "Regular exercise"
          ]
      ),
      DiseaseModel(
          name: "Macular degeneration",
          avoid: [
            "Smoking",
            "High blood pressure",
            "High cholesterol"
          ],
          suggest: [
            "Leafy green vegetables",
            "Omega-3 fatty acids",
            "Regular eye exams"
          ]
      ),
      DiseaseModel(
          name: "Hearing loss",
          avoid: [
            "Loud noises",
            "Ototoxic medications"
          ],
          suggest: [
            "Hearing protection",
            "Regular hearing tests"
          ]
      ),
      DiseaseModel(
          name: "Dementia",
          avoid: [
            "Head injuries",
            "Smoking",
            "High blood pressure",
            "High cholesterol",
            "Diabetes",
            "Obesity",
            "Lack of physical activity"
          ],
          suggest: [
            "Cognitive stimulation",
            "Regular exercise",
            "Healthy diet",
            "Social interaction"
          ]
      ),
      DiseaseModel(
          name: "Kidney disease",
          avoid: [
            "Excess salt",
            "Potassium-rich foods",
            "Phosphorus-rich foods",
            "Protein-rich foods"
          ],
          suggest: [
            "Fluid restriction (if necessary)",
            "Low-protein diet (if necessary)",
            "Regular exercise"
          ]
      ),
      DiseaseModel(
          name: "Liver disease",
          avoid: [
            "Alcohol",
            "Fatty foods",
            "Sugar-sweetened beverages"
          ],
          suggest: [
            "Healthy diet",
            "Regular exercise"
          ]
      ),
      DiseaseModel(
          name: "Gout",
          avoid: [
            "Purine-rich foods",
            "Alcohol"
          ],
          suggest: [
            "Healthy diet",
            "Regular exercise"
          ]
      ),
      DiseaseModel(
          name: "Celiac disease",
          avoid: [
            "Gluten"
          ],
          suggest: [
            "Gluten-free diet"
          ]
      ),
      DiseaseModel(
          name: "Crohn's disease",
          avoid: [
            "Foods that trigger symptoms"
          ],
          suggest: [
            "Regular meals",
            "Small, frequent meals",
            "Low-fiber diet (if necessary)"
          ]
      ),
      DiseaseModel(
          name: "Ulcerative colitis",
          avoid: [
            "Foods that trigger symptoms"
          ],
          suggest: [
            "Regular meals",
            "Small, frequent meals",
            "Low-fiber diet (if necessary)"
          ]
      ),
      DiseaseModel(
          name: "Diverticulosis",
          avoid: [
            "Nuts",
            "Seeds",
            "Popcorn"
          ],
          suggest: [
            "High-fiber diet"
          ]
      ),
      DiseaseModel(
          name: "Chronic fatigue syndrome",
          avoid: [
            "Gluten",
            "Dairy",
            "Sugar",
            "Processed foods",
            "Lack of sleep"
          ],
          suggest: [
            "Elimination diet",
            "Regular exercise",
            "Healthy diet",
            "Adequate sleep"
          ]
      ),
      DiseaseModel(
          name: "Irritable bowel syndrome (IBS)",
          avoid: [
            "FODMAPs",
            "Caffeine",
            "Alcohol",
            "Fatty foods",
            "Stress"
          ],
          suggest: [
            "Low-FODMAP diet",
            "Regular exercise",
            "Stress management techniques"
          ]
      ),
      DiseaseModel(
          name: "Migraines",
          avoid: [
            "Tyramine-rich foods",
            "Aged cheeses",
            "Red wine",
            "Chocolate",
            "Artificial sweeteners"
          ],
          suggest: [
            "Regular meals",
            "Adequate hydration",
            "Stress management techniques"
          ]
      ),
      DiseaseModel(
          name: "Arthritis",
          avoid: [
            "Inflammatory foods",
            "Processed foods",
            "Excess weight",
            "Lack of physical activity"
          ],
          suggest: [
            "Mediterranean diet",
            "Omega-3 fatty acids",
            "Weight loss (if overweight or obese)",
            "Regular exercise"
          ]
      ),
      DiseaseModel(
          name: "Asthma",
          avoid: [
            "Allergens",
            "Irritants",
            "Cold air",
            "Stress"
          ],
          suggest: [
            "Allergen avoidance",
            "Regular exercise",
            "Breathing exercises"
          ]
      ),
      DiseaseModel(
          name: "Eczema",
          avoid: [
            "Irritants",
            "Fragrances",
            "Dyes",
            "Dry skin"
          ],
          suggest: [
            "Moisturizers",
            "Gentle cleansers",
            "Stress management techniques"
          ]
      ),
      DiseaseModel(
          name: "Psoriasis",
          avoid: [
            "Alcohol",
            "Smoking",
            "Stress",
            "Skin irritants"
          ],
          suggest: [
            "Healthy diet",
            "Regular exercise",
            "Stress management techniques"
          ]
      ),
      DiseaseModel(
          name: "Acne",
          avoid: [
            "Dairy",
            "Sugar",
            "Processed foods",
            "Picking at blemishes"
          ],
          suggest: [
            "Healthy diet",
            "Gentle cleansers",
            "Regular exercise"
          ]
      ),
      DiseaseModel(
          name: "High blood pressure",
          avoid: [
            "Excess salt",
            "Processed foods",
            "Alcohol",
            "Lack of physical activity"
          ],
          suggest: [
            "DASH diet",
            "Regular exercise",
            "Weight loss (if overweight or obese)"
          ]
      ),
      DiseaseModel(
          name: "High cholesterol",
          avoid: [
            "Saturated and unhealthy fats",
            "Processed foods",
            "Trans fats",
            "Excess cholesterol"
          ],
          suggest: [
            "Healthy diet",
            "Regular exercise",
            "Weight loss (if overweight or obese)"
          ]
      ),
      DiseaseModel(
          name: "Thyroid disease",
          avoid: [
            "Goitrogenic foods",
            "Soy",
            "Cruciferous vegetables"
          ],
          suggest: [
            "Iodine-rich foods",
            "Selenium-rich foods",
            "Regular exercise"
          ]
      ),
      DiseaseModel(
          name: "Polycystic ovary syndrome (PCOS)",
          avoid: [
            "Refined carbohydrates",
            "Processed foods",
            "Sugar",
            "Excess weight"
          ],
          suggest: [
            "Low-glycemic index diet",
            "Regular exercise",
            "Weight loss (if overweight or obese)"
          ]
      ),
      DiseaseModel(
          name: "Heart disease",
          avoid: [
            "Processed meats",
            "Red meat",
            "Full-fat dairy products",
            "Sugary drinks",
            "Fried foods",
            "Trans fats",
            "Added salt",
            "Excess caffeine",
            "Excessive alcohol consumption"
          ],
          suggest: [
            "Fruits",
            "Vegetables",
            "Whole grains",
            "Lean protein",
            "Nuts and seeds",
            "Omega-3 fatty acids",
            "Fiber",
            "Potassium",
            "Magnesium"
          ]
      ),
      DiseaseModel(
          name: "Diabetes",
          avoid: [
            "Sugary drinks",
            "Refined carbohydrates",
            "White bread",
            "White rice",
            "Pasta",
            "Artificial sweeteners",
            "High-glycemic index foods",
            "Excessive processed foods",
            "Lack of physical activity"
          ],
          suggest: [
            "Non-starchy vegetables",
            "Whole grains",
            "Lean protein",
            "Healthy fats",
            "Fiber",
            "Chromium",
            "Magnesium",
            "Regular exercise"
          ]
      ),
      DiseaseModel(
          name: "Cancer",
          avoid: [
            "Processed meats",
            "Red meat",
            "Charred foods",
            "Sugary drinks",
            "Alcohol",
            "Tobacco use",
            "Exposure to harmful chemicals",
            "Obesity",
            "Lack of physical activity"
          ],
          suggest: [
            "Fruits",
            "Vegetables",
            "Whole grains",
            "Lean protein",
            "Beans and lentils",
            "Cruciferous vegetables",
            "Antioxidants",
            "Phytochemicals",
            "Regular exercise"
          ]
      ),
      DiseaseModel(
          name: "Alzheimer's disease",
          avoid: [
            "Saturated and unhealthy fats",
            "Refined carbohydrates",
            "Added sugars",
            "Excessive processed foods",
            "Lack of mental stimulation",
            "Head injuries"
          ],
          suggest: [
            "Mediterranean diet",
            "Omega-3 fatty acids",
            "B vitamins",
            "Antioxidants",
            "Regular cognitive stimulation",
            "Physical activity"
          ]
      ),
      DiseaseModel(
          name: "Osteoporosis",
          avoid: [
            "Excessive caffeine",
            "Excessive alcohol consumption",
            "Smoking",
            "Lack of calcium and vitamin D",
            "Lack of physical activity"
          ],
          suggest: [
            "Calcium-rich foods",
            "Vitamin D-rich foods",
            "Weight-bearing exercises",
            "Resistance training"
          ]
      ),
      DiseaseModel(
          name: "Depression",
          avoid: [
            "Refined carbohydrates",
            "Processed foods",
            "Sugary drinks",
            "Artificial sweeteners",
            "Lack of physical activity",
            "Social isolation"
          ],
          suggest: [
            "Whole grains",
            "Lean protein",
            "Fruits and vegetables",
            "Omega-3 fatty acids",
            "Regular exercise",
            "Social support"
          ]
      ),
      DiseaseModel(
          name: "Anxiety",
          avoid: [
            "Caffeine",
            "Alcohol",
            "Nicotine",
            "Sugar",
            "Processed foods",
            "Lack of sleep"
          ],
          suggest: [
            "Relaxation techniques",
            "Mindfulness meditation",
            "Regular exercise",
            "Healthy diet",
            "Adequate sleep"
          ]
      ),
      DiseaseModel(
          name: "Insomnia",
          avoid: [
            "Caffeine",
            "Alcohol",
            "Nicotine",
            "Screen time before bed",
            "Irregular sleep schedule"
          ],
          suggest: [
            "Relaxation techniques",
            "Regular exercise",
            "Healthy diet",
            "Dark, quiet, and cool sleep environment"
          ]
      )
    ]);

    return diseases;
  }
}