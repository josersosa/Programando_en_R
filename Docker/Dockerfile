FROM rocker/rstudio:4.0.0

ARG PASSWORD=curso 
ARG DISABLE_AUTH=true

MAINTAINER "Jose R Sosa" josersosa@gmail.com

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    zlib1g-dev \
  && install2.r --error \
    devtools \
    swirl \
    && R -e "swirl::install_course_github('josersosa','Programando_en_R')"
	
#COPY .Rprofile /home/rstudio/
#RUN chown rstudio:rstudio /home/rstudio/.Rprofile
