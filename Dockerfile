FROM ghcr.io/cynkra/rig-ubuntu:main

RUN apt-get install -y flex bison libglpk-dev libgmp-dev

RUN R -q -e 'pak::pak("igraph", dependencies = TRUE)'

# Failed with reference to R6: https://github.com/cynkra/rig-ubuntu-igraph/actions/runs/5463120907/jobs/9943407982#step:6:783
# RUN R-devel -q -e 'pak::pak("igraph", dependencies = TRUE)'
