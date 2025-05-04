FROM node:latest
RUN adduser --disabled-password salahbouabid7
ENV HOME=/home/salahbouabid7/Web 
WORKDIR $HOME/crate
COPY crate/code/web/ .
RUN  chown -R salahbouabid7 .
RUN  chmod 755 -R  .
RUN  mkdir $HOME/.npm
RUN  chown  1001:1001 -R $HOME/.npm
USER salahbouabid7
ENV NODE_OPTIONS=--openssl-legacy-provider
RUN npm install
RUN chmod +x ./script
ENTRYPOINT [./script]  
CMD ["npm", "start"]
 

