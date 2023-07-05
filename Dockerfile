FROM ghcr.io/cynkra/rig-ubuntu:main

RUN apt-get install -y flex bison libglpk-dev libgmp-dev

RUN R -q -e 'pak::pak("igraph", dependencies = TRUE)'

RUN R-devel -q -e 'pak::pak("igraph", dependencies = TRUE)'
