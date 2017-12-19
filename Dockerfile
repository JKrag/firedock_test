FROM thomasp85/firedock_test

## Switch from root
RUN useradd --create-home --shell /bin/bash ruser
USER ruser
WORKDIR /home/ruser

ADD fiery.R /home/ruser/

EXPOSE 8080

CMD ["Rscript", "fiery.R"]
