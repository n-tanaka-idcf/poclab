# ==============================================================================
# 基本設定
# ==============================================================================
FROM debian:trixie-slim AS base

ARG APPUSER_UID
ARG APPUSER_GID
ARG APPUSER=appuser
ARG WORKDIR=/app

ENV LANG=C.UTF-8 \
    LC_ALL=C.UTF-8 \
    TZ=Asia/Tokyo

WORKDIR ${WORKDIR}
RUN chown -R "${APPUSER_UID}:${APPUSER_GID}" "${WORKDIR}"

# ==============================================================================
# 開発環境用設定
# ==============================================================================
FROM base AS development

# hadolint ignore=DL3008
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    bash-completion \
    sudo && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN groupadd -g "${APPUSER_GID}" "${APPUSER}" && \
    useradd -m -u "${APPUSER_UID}" -g "${APPUSER_GID}" "${APPUSER}" -s /bin/bash -l && \
    echo "$APPUSER ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER ${APPUSER}
CMD ["sleep", "infinity"]
