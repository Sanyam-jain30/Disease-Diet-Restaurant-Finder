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
          name: "Glaucoma",
          avoid: ["Caffeine", "Sugar", "Refined Carbohydrates", "Unsaturated Fats"],
          suggest: ["Fruits", "Vegetables"]
      ),
      DiseaseModel(
          name:" Diabetes",
          avoid:["Sugary Beverages", "Refined Carbs", "Sweetened Cereals And Desserts", "Trans Fats"],
          suggest:["Brown Rice", "Leaf Protien", "Hight Fiber Fruits", "Avocados", "Low Glycemic Index Foods,Herbal Tea"]
      ),
      DiseaseModel(
          name:"Heart Disease",
          avoid:["Trans Fats", "Processed Foods", "Alocoholic And Sugary Beverages", "Meat And Egg Yoks"],
          suggest:["Omega-3 Rich Fish", "Plant Based Oils(Flaxseed Oil)", "Almons", "Nuts", "Berries"]
      ),
      DiseaseModel(
          name:"Pancreatitis",
          avoid:["Fried Foods,Fatty Meat", "Alcohol", "Caffeine", "Spicy Foods"],
          suggest:["Bland Food", "Lean Protein", "Whole Grains", "Cooked Vegetables"]
      ),
      DiseaseModel(
          name:"Lactose Intolerance",
          avoid:["Diary Products", "Soft Cheese", "Processed Food With Lactose"],
          suggest:["Fortified Plant Based Milk", "Lactase Supplements"]
      ),
      DiseaseModel(
          name:"Rheumatoid Arthritis",
          avoid:["Red Meat", "Fried Foods", "Sugary Snacks"],
          suggest:["Fatty Fish", "Cooked Vegetables", "Antoxidant Rich Foods"]
      ),
      DiseaseModel(
          name:"Migraines",
          avoid:["Caffeine", "Cheese", "Processed Meat", "Artificial Sweetners"],
          suggest:["Leafy Greens", "Nuts", "Ginger", "Spinach", "Almonds"]
      ),
      DiseaseModel(
          name:"Hypothyroidism",
          avoid:["Soy Products", "Caffeine", "Sugary Snacks,Processed Foods"],
          suggest:["Iodine Rich Foods", "Lean Protein", "Nutsm Fruits", "Whole Grains"]
      ),
      DiseaseModel(
          name:"Chronic Kidney Disease",
          avoid:["Potassium Rich Fruits", "Processed Foods", "Excessive Salt"],
          suggest:["Low Sodium Foods", "Lean Protein,Whole Grains"]
      ),
      DiseaseModel(
          name:"COPD",
          avoid:["Sugary Beverages", "Fried Foods", "Excessive Salt", "Processed Meat"],
          suggest:["Antioxidant Rich Foods(Oranges,Berries)", "Lean Protein", "Food With High Vitamin D"]
      ),
      DiseaseModel(
          name:"SLE",
          avoid:["Alfalfa Sprouts", "Red Meat", "Processed Foods"],
          suggest:["Omega-3 Fatty Foods", "Fortified Dairy Products,Berries", "Artichokes", "Orange"]
      ),
      DiseaseModel(
          name:"Epilepsy",
          avoid:["High Carb Foods", "Excessive Sugar", "Alcohol", "Processed Snacks"],
          suggest:["High Fat And Low Carb Foods", "Leafy Greens", "Nuts"]
      ),
      DiseaseModel(
          name:"Myeloma",
          avoid:["Red Meat", "Sugary Beverages", "Excessive Salt", "Alocholic Beevrages"],
          suggest:["Fish", "Diary Alternatives,Fortified Cereals", "Berries"]
      ),
      DiseaseModel(
          name:"Gastroenteritis",
          avoid:["Spicy Foods", "Caffeine", "Greasy Foods"],
          suggest:["Bland", "Applesauce", "Ors", "Clear Broths", "Rice"]
      ),
      DiseaseModel(
          name:"Gout",
          avoid:["Organ Meats", "Shell Fish", "Sugary Beverages", "Red Meat"],
          suggest:["Cherry Juice", "Low-Fat Dairy", "Complex Carbs"]
      )
    ]);

    return diseases;
  }
}