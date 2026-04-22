FROM alpine:3.23
ENV PATH="/usr/texlive/texlive-scripts:$PATH"
ENV SHELL="/bin/bash"
ENV ROOT_DIR="/usr/texlive/texlive-scripts"
ENV ROOT_TMP="/usr/texlive/tmps"
ENV WORKDIR="/latex"
ENV OUTPUT_AUX="/tmp/output-latex"
ENV TEMPLATE="none"
RUN apk add --no-cache texlive-full

RUN mkdir -p ${ROOT_DIR} ${ROOT_TMP} ${WORKDIR}

WORKDIR ${ROOT_TMP} 
COPY ./memoria-tfm ./tfm
COPY ./article ./article
COPY ./mono ./mono

WORKDIR ${ROOT_DIR}
COPY ./start.sh .
COPY ./compile.sh .
RUN chmod +x compile.sh && chmod +x start.sh

WORKDIR ${WORKDIR}
CMD ["sh", "-c", "$ROOT_DIR/start.sh && /bin/bash"]


