FROM elixir:1.17.2

ENV APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE=DontWarn
ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NOWARNINGS yes

RUN apt-get update && apt-get -y install apt-file && apt-file update
RUN apt-get -y upgrade

RUN apt-get -y install bash git vim sudo curl inotify-tools cmake erlang-dev ca-certificates gnupg

RUN mkdir -p /etc/apt/keyrings
RUN curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | \
    gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg

ENV NODE_MAJOR=22
RUN echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" > /etc/apt/sources.list.d/nodesource.list
RUN apt-get update && apt-get -y install nodejs

RUN echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf

ARG UID=1000
ARG GID=1000

RUN groupadd -g $GID devel
RUN useradd -u $UID -g devel -m devel
RUN echo "devel ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

COPY --chown=devel:devel . /app

USER devel

WORKDIR /app

RUN mix local.hex --force
RUN mix local.rebar --force
