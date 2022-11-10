FROM python:3

ARG ARCH_SUFFIX

COPY ci/install_deps.sh /install_deps.sh
RUN /install_deps.sh

ARG ARCH_NATIVE
ARG CC

# Persist ARGs into the image

ENV ARCH_SUFFIX="$ARCH_SUFFIX" \
    ARCH_NATIVE="$ARCH_NATIVE" \
    CC="gcc"
