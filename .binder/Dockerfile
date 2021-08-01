FROM rocker/binder:4.1.0
LABEL maintainer='https://github.com/editio'
USER root
COPY . ${HOME}
RUN chown -R ${NB_USER} ${HOME}
USER ${NB_USER}



RUN wget https://github.com/burgos2021/binder/raw/main/DESCRIPTION && R -e "options(repos = list(CRAN = 'http://mran.revolutionanalytics.com/snapshot/2021-05-19/')); devtools::install_deps()"

RUN rm DESCRIPTION.1; exit 0
