ARG APP_HOMEDIR=/app

FROM alpinode/base:22 AS base
ARG APP_HOMEDIR
ENV APP_HOMEDIR=$APP_HOMEDIR
COPY --from=shared /build/base /build/shared/
COPY /build/base /build/
COPY /build.sh /
RUN sh /build.sh

FROM alpinode/base:22 AS dev
ARG APP_HOMEDIR
ENV APP_HOMEDIR=$APP_HOMEDIR
COPY --from=shared /build /build/shared
COPY /build /build/
COPY /build.sh /
RUN sh /build.sh
