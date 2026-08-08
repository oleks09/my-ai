FROM ghcr.io/ggml-org/llama.cpp:server

# Render provides PORT automatically. 10000 is only a local fallback.
ENV LLAMA_ARG_HOST=0.0.0.0
ENV LLAMA_ARG_CTX_SIZE=4096
ENV LLAMA_ARG_N_PARALLEL=1
ENV LLAMA_ARG_N_PREDICT=512
ENV LLAMA_ARG_THREADS=-1
ENV LLAMA_ARG_THREADS_BATCH=-1
ENV LLAMA_ARG_TEMPERATURE=0.7

# Explicitly start llama-server with the model.
# This avoids the server starting in router/no-model mode.
ENTRYPOINT ["/bin/sh", "-c"]
CMD ["exec llama-server -hf unsloth/SmolLM2-135M-Instruct-GGUF:Q4_K_M --host 0.0.0.0 --port ${PORT:-10000} -c 4096 -np 1 -n 512"]
