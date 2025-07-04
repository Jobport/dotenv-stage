FROM ghcr.io/jobport/ruby:3.4.4-alpine3.21 as base

RUN apk --no-cache add build-base

# setup bundler
ARG package_token
ENV BUNDLE_RUBYGEMS__PKG__GITHUB__COM=${package_token}

COPY --chown=jobport:jobport . ./

CMD ['sh']
