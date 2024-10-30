function sendMessage() {
    const userInput = document.getElementById("userInput").value;
    
    if (userInput.trim() === "") {
        return; 
    }

    const chatbox = document.getElementById("chatbox");
    const userMessage = document.createElement("div");
    userMessage.classList.add("user-message");
    userMessage.textContent = userInput;
    chatbox.appendChild(userMessage);

    document.getElementById("userInput").value = "";

    setTimeout(() => {
        const botMessage = document.createElement("div");
        botMessage.classList.add("bot-message");
        botMessage.textContent = generarRespuesta(userInput);
        chatbox.appendChild(botMessage);

        chatbox.scrollTop = chatbox.scrollHeight;
    }, 500);
}

function generarRespuesta(input) {

    const respuestas = {
        "hola": "¡Hola! ¿Cómo te encuentras hoy?",
        "adiós": "¡Hasta luego! Que tengas un buen día.",
        "gracias": "¡De nada! Estoy aquí para ayudarte.",
        "¿cómo estás?": "Soy un chatbot, ¡estoy siempre listo para ayudar!",
        "ayuda": "Claro, dime cómo puedo asistirte.",
        "¿qué puedes hacer?": "Puedo responder preguntas simples, chatear contigo y ayudarte en lo que necesites."
    };
    
    const mensaje = input.toLowerCase();

    return respuestas[mensaje] || "Lo siento, no entiendo tu mensaje. Intenta decir 'hola' o 'ayuda'.";
}
