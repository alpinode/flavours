ARG APP_HOMEDIR=/home/app

FROM alpinode/base:20 AS base
ARG APP_HOMEDIR
ENV APP_HOMEDIR=$APP_HOMEDIR
COPY --from=shared /base /
COPY /base /build/
RUN sh /build/run

FROM alpinode/base:20 AS dev
ARG APP_HOMEDIR
ENV APP_HOMEDIR=$APP_HOMEDIR
COPY --from=shared /base /
COPY /base /build/
RUN sh /build/run
COPY --from=shared /dev /
COPY /dev /build/
RUN sh /build/run
