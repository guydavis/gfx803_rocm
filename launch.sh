#
# Runs the Docker container needed for Ollama on Radeon 590
#  - Change the version number on the Ollama docker image below
#  - Set the local path to your Ollama models folder mount
#

sudo docker run -it -d --restart unless-stopped --device=/dev/kfd --device=/dev/dri --group-add=video --ipc=host --cap-add=SYS_PTRACE --security-opt seccomp=unconfined -p 8080:8080 -p 11434:11434 -e OLLAMA_HOST=0.0.0.0 -e OLLAMA_ORIGINS=* -e OLLAMA_MODELS=/ollama/models -v /mnt/machinaris/ollama/models:/ollama/models --name ollama rocm6_gfx803_ollama:0.20.2 bash
