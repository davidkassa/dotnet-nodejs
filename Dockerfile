# TBD? https://github.com/moby/moby/pull/31352
# ARG NODE_VERSION=latest
# FROM node:$NODE_VERSION
FROM node:latest as auto-build-trigger
FROM mcr.microsoft.com/dotnet/core/sdk:latest

MAINTAINER davidkassa <david.kassa@gmail.com>

# Build-time metadata as defined at http://label-schema.org
ARG BUILD_DATE
ARG VCS_REF
ARG VERSION
LABEL org.label-schema.build-date=$BUILD_DATE \
  org.label-schema.license="MIT" \
  org.label-schema.name="dotnet-nodejs" \
  org.label-schema.description="Auto-updating Docker image based on .NET Core official image with Node.js installed." \
  org.label-schema.vcs-ref=$VCS_REF \
  org.label-schema.vcs-url="https://github.com/davidkassa/dotnet-nodejs" \
  org.label-schema.version=$VERSION \
  org.label-schema.schema-version="1.0"

# Commands
RUN apt-get update -yq \
  && apt-get install curl gnupg -yq \
  && curl -sL https://deb.nodesource.com/setup_12.x | bash \
  && apt-get install nodejs -yq \
  && apt-get install zip -yq
