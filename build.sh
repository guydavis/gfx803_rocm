#
# To build Ollama at a new version, change version number below
#

sed -i 's/15.1/17.4/g' README.md Dockerfile_rocm64_ollama
docker build -f Dockerfile_rocm64_base . -t 'rocm6_gfx803_base:6.4'
docker build -f Dockerfile_rocm64_ollama . -t 'rocm6_gfx803_ollama:0.17.4'
