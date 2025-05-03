import 'package:google_generative_ai/google_generative_ai.dart';

class ApiKeys {
  static const String gemini = 'AIzaSyAdXRO3TIbbP52L8UhR0SRNz74na-dnNIw'; 
}Future<String> sendMessageToGPT(String message) async {
  try {
    final model = GenerativeModel(
      model: 'gemini-2.0-flash',
      apiKey: ApiKeys.gemini,
          );

    final response = await model.generateContent([Content.text(message)]);
    
    if (response.text == null || response.text!.isEmpty) {
      throw Exception('الرد فارغ من الخادم');
    } 
    
    return response.text!;
  } on GenerativeAIException catch (e) {
    throw Exception('خطأ في الخدمة: ${e.message}');
    // print('خطأ في الخدمة: ${e.message}');
  } catch (e) {
    throw Exception('خطأ عام: $e');
  }
}