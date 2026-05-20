FROM ghcr.io/jobport/ruby:4.0.3-alpine3.23 as base

RUN apk --no-cache add build-base

# setup bundler
ARG package_token
ENV BUNDLE_RUBYGEMS__PKG__GITHUB__COM=${package_token}

COPY --chown=jobport:jobport . ./

CMD ['sh']
