# My AI — ChatGPT-style local-model web chat

This project uses the official llama.cpp server and the open SmolLM2-135M-Instruct GGUF model. It does NOT use an OpenAI API key.

## Render

1. Put this folder in a GitHub repository.
2. In Render choose **New → Web Service**, connect the repository, and select **Docker**.
3. Deploy. Render provides an `onrender.com` URL.

The server listens on Render's `PORT`/10000 and exposes llama.cpp's built-in web chat.

## Important

This is a tiny 135M model so it is mainly a proof-of-concept. It is **not comparable to ChatGPT** in reasoning, knowledge, or language quality. A stronger model needs substantially more RAM/CPU.

The model is downloaded automatically by llama.cpp at runtime from Hugging Face, so no API key is needed.
