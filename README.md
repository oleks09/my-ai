# My AI — llama.cpp on Render

This version explicitly starts `llama-server` with the SmolLM2 GGUF model.

## Deploy on Render

1. Upload the contents of this folder to your GitHub repository.
2. In Render choose **New → Web Service**.
3. Connect the GitHub repository.
4. Select **Docker**.
5. Deploy.

Render supplies the `PORT` environment variable automatically. The Docker command uses it.

## Model

The server downloads:

`unsloth/SmolLM2-135M-Instruct-GGUF:Q4_K_M`

from Hugging Face when the container starts.

The llama.cpp server has a `/health` endpoint. It returns HTTP 503 while the model is loading and HTTP 200 once the model is ready.

## Important

SmolLM2-135M is a very small model. It is useful for testing, but its quality is far below ChatGPT. Render Free CPU/RAM limitations can also make inference slow.
