package com.example.flutter_chatbot_methodchannel

import io.flutter.embedding.android.FlutterActivity
import net.take.blipchat.BlipClient

class MainActivity: FlutterActivity(){

    // Cria conexão entre o código Dart e o código Nativo do Android (Kotlin/Java)
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        GeneratedPluginRegistrant.registerWith(flutterEngine)

        // Método de chamada através do canal nomeado de chatbot
       MethodChannel(flutterEngine.dartExecutor.binaryMessenger, "chatbot").setMethodCallHandler {
            call, result ->
            //Faz uma chamada buscando a função showChatBot
            if (call.method == "showChatbot") {
               showChatbot()
               //Ocorrendo sucesso na chamada, returno um true de sucesso
               result.success(true)

           } else {
            result.notImplemented()
           }
       }

        //Função de chamada do chatbot
       fun showChatbot() {
            try {
            BlipClient.openBlipThread(this, "key", null)
                } catch (e: IllegalArgumentException) {
                e.printStackTrace()
            }

        }
    }
}
