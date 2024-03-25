import '../models/disease_model.dart';

class QuestionsController {
  int currentPage = 0;

  final List<DiseaseQuestionsModel> pulmonaryEmbolismQuestions = [
    DiseaseQuestionsModel(
      question:
          "Are you taking blood-thinning medications (anticoagulants) that prevent the increase in the size of existing clots or prevent the occurrence of new clots?",
    ),
    DiseaseQuestionsModel(
      question:
          "Have you had any previous medical problems, especially any surgeries you have undergone, injuries or medical conditions that you have recently experienced that led to you staying in bed for several days?",
    ),
    DiseaseQuestionsModel(
      question:
          "Have you made any trips that included riding a car or plane for a long period of time?",
    ),
    DiseaseQuestionsModel(
      question:
          "Have you taken any vitamins, herbal products or any nutritional supplements?",
    ),
    DiseaseQuestionsModel(
      question:
          "Have you, your parents, or siblings had blood clots or pulmonary embolism in the past?",
    ),
    DiseaseQuestionsModel(
      question:
          "Did you suddenly feel shortness of breath that appeared with rest and worsened with physical activity?",
    ),
    DiseaseQuestionsModel(
      question:
          "Did you feel chest pain similar to a heart attack, which is a severe pain in the chest area and shortness of breath, especially from deep breathing?",
    ),
    DiseaseQuestionsModel(
      question:
          "Was it a cough accompanied by bloody mucus or had blood stains?",
    ),
    DiseaseQuestionsModel(
      question:
          "Have you felt pain in the legs, swelling in the legs or pain in the legs accompanied by swelling in them, usually in the back of the leg?",
    ),
    DiseaseQuestionsModel(
      question: "Did the face suddenly appear cyanosis and pale color?",
    ),
    DiseaseQuestionsModel(
      question: "Do you smoke continuously?",
    ),
    DiseaseQuestionsModel(
      question: "Do you take doses of estrogen on a regular basis?",
    ),
    DiseaseQuestionsModel(
      question: "Are you overweight?",
    ),
  ];
  final List<DiseaseQuestionsModel> copdQuestions = [
    DiseaseQuestionsModel(
      question:
          "Do you always have difficulty breathing or does it increase in some cases?",
    ),
    DiseaseQuestionsModel(
      question: "Do you have chronic cough or frequent bouts of coughing?",
    ),
    DiseaseQuestionsModel(
      question:
          "Do you have difficulty performing daily activities due to breathing difficulties?",
    ),
    DiseaseQuestionsModel(
      question: "Do you smoke or have you smoked in the past?",
    ),
  ];
  final List<DiseaseQuestionsModel> pneumoniaQuestions = [
    DiseaseQuestionsModel(
      question: "Do you have a cough accompanied by phlegm or pus?",
    ),
    DiseaseQuestionsModel(
      question:
          "Do you find ibigintt difficult to breathe or pain in the chest?",
    ),
    DiseaseQuestionsModel(
      question:
          "Do you suffer from rapid breathing and a sudden refusal to eat?",
    ),
    DiseaseQuestionsModel(
      question: "Is your temperature below 32 for seniors over 65?",
    ),
    DiseaseQuestionsModel(
      question:
          "Have you stayed in the hospital for a long time recently due to surgery?",
    ),
    DiseaseQuestionsModel(
      question:
          "Do you suffer from immunodeficiency syndrome (AIDS) or various types of cancer?",
    ),
    DiseaseQuestionsModel(
      question: "Do you constantly smoke cigarettes ?",
    ),
    DiseaseQuestionsModel(
      question: "Have you ever been diagnosed with COPD?",
    ),
    DiseaseQuestionsModel(
      question: "Do you suffer from low oxygen levels in the bloodstream?",
    ),
    DiseaseQuestionsModel(
      question: "Do you suffer from very low blood pressure?",
    ),
    DiseaseQuestionsModel(
      question:
          "Do you suffer from a severe lung injury (acute respiratory distress syndrome), which takes up to 4 or 5 days to occur?",
    ),
    DiseaseQuestionsModel(
      question:
          "Lobar pneumonia, did you suffer from a severe cold or flu, after which it resulted in difficulty breathing?",
    ),
    DiseaseQuestionsModel(
      question:
          "Aspiration pneumonia, has large amounts of saliva or food been accidentally suctioned or thrown and not filtered from the lungs?",
    ),
  ];
  final List<DiseaseQuestionsModel> pulmonaryFibrosisQuestions = [
    DiseaseQuestionsModel(
      question:
          "Do you suffer from any chronic diseases, especially arthritis?",
    ),
    DiseaseQuestionsModel(
      question: "Do you smoke?",
    ),
    DiseaseQuestionsModel(
      question: "Do you light a dry cough?",
    ),
    DiseaseQuestionsModel(
      question: "Do you lose weight unjustifiably?",
    ),
    DiseaseQuestionsModel(
      question: "Do you have constant fatigue for no reason?",
    ),
    DiseaseQuestionsModel(
      question:
          "Are you exposed to an increase in the width and rotation of the fingertips of the hands and feet?",
    ),
    DiseaseQuestionsModel(
      question: "Do birds breed or deal with their waste?",
    ),
    DiseaseQuestionsModel(
      question:
          "Have you taken some pacemaker medications, such as Cordarone or Nextrone?",
    ),
    DiseaseQuestionsModel(
      question:
          "Have you taken antibiotics for a long time such as nitrofurantoin, macropide, macrodantin or athampotol?",
    ),
    DiseaseQuestionsModel(
      question:
          "Do you suffer from gastroesophageal reflux disease, which is the rise of acid from the stomach to the esophagus?",
    ),
    DiseaseQuestionsModel(
      question: "Do you have dibigintabetes or hypertension ?",
    ),
    DiseaseQuestionsModel(
      question: "Are you receiving treatment that contains cortisone?",
    ),
    DiseaseQuestionsModel(
      question: "Do you recbiginteive antioxidant treatment like Intox?",
    ),
  ];
  final List<DiseaseQuestionsModel> interstitialLungDiseaseQuestions = [
    DiseaseQuestionsModel(
      question: "Do you feel short of breath?",
    ),
    DiseaseQuestionsModel(
      question: "Do you have a persistent cough?",
    ),
    DiseaseQuestionsModel(
      question: "Do you have chest pain?",
    ),
    DiseaseQuestionsModel(
      question:
          "Do you cough at night? If you cough at night, does coughing wake you up?",
    ),
    DiseaseQuestionsModel(
      question: "Does coughing produce phlegm or blood?",
    ),
    DiseaseQuestionsModel(
      question:
          "Have you noticed any of the following symptoms: weight loss, rash or skin change, difficulty swallowing, swollen foot or leg, heartburn or reflux, light sensitivity, dry eyes or mouth, bruising?",
    ),
    DiseaseQuestionsModel(
      question: "Do you smoke?",
    ),
    DiseaseQuestionsModel(
      question:
          "Have you been exposed to any toxic substances or irritants (perfumes and dust) recently?",
    ),
    DiseaseQuestionsModel(
      question: "Do you have chest pain?",
    ),
    DiseaseQuestionsModel(
      question: "Do you have any immune diseases?",
    ),
    DiseaseQuestionsModel(
      question: "Are there any abnormal sounds in your lungs (wheezing)?",
    ),
    DiseaseQuestionsModel(
      question: "Are there any swelling in your hands or feet?",
    ),
  ];
}
