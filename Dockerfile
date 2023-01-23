FROM python:3.7
COPY . ./app
WORKDIR '/app'
RUN cd */
RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive \
    apt-get install --no-install-recommends --assume-yes \
    libpangocairo-1.0-0 \
    libcairo2-dev \
    libpango1.0-dev \
    libjpeg-dev \
    libpng-dev \
    libgif-dev \
    ffmpeg \
    git
RUN pip install pycairo manim git-sim

# docker build . -t docker-git-sim
# docker run -it docker-git-sim /bin/bash
# docker exec -it container_id git-sim log
# docker cp container_id:/app/git-sim_media/ /c/Users/username/Desktop/git-sim_media/