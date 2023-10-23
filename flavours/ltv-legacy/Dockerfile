
FROM alpinode/base:18 as base
COPY --from=shared /base /
COPY /base /build/
RUN sh /build/run

FROM alpinode/base:18 as dev
COPY --from=shared /base /
COPY /base /build/
RUN sh /build/run
COPY --from=shared /dev /
COPY /dev /build/
RUN sh /build/run

