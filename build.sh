#
# To build Ollama at a new version, change version number below
#

sed -i 's/17.7/20.2/g' README.md Dockerfile_rocm64_ollama
docker build -f Dockerfile_rocm64_base . -t 'rocm6_gfx803_base:6.4'
docker build -f Dockerfile_rocm64_ollama . -t 'rocm6_gfx803_ollama:0.20.2'
