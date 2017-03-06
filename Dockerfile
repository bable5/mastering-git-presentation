FROM bable5/presentation-framework:1.0.0
MAINTAINER Sean L. Mooney <bable4@gmail.com>


RUN rm /slidedeck/reveal.js/index.html
COPY slides /slidedeck/slides
COPY index.html /slidedeck/reveal.js/
RUN ln -s /slidedeck/slides /slidedeck/reveal.js/slides

RUN chown -R slidedeck:slidedeck /slidedeck

