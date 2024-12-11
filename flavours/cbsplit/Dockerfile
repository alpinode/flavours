ARG APP_HOMEDIR=/app

FROM alpinode/base:22 AS base
ARG APP_HOMEDIR
ENV APP_HOMEDIR=$APP_HOMEDIR
COPY --from=shared /base /
COPY /base /build/
RUN sh /build/run

FROM alpinode/base:22 AS dev
ARG APP_HOMEDIR
ENV APP_HOMEDIR=$APP_HOMEDIR
COPY --from=shared /base /
COPY /base /build/
RUN sh /build/run
COPY --from=shared /dev /
COPY /dev /build/
RUN sh /build/run
