FROM ruby:4.0.6

RUN apt-get update \
  && apt-get install -y build-essential libpq-dev libsqlite3-dev curl

RUN curl -sL https://deb.nodesource.com/setup_26.x | bash -
RUN apt-get install -y nodejs
RUN npm install --global pnpm@11

ENV DISABLE_SPRING=1
ENV RAILS_SERVE_STATIC_FILES=enabled
ENV RAILS_LOG_TO_STDOUT=enabled

WORKDIR /app

# .ruby-version копируется вместе с Gemfile: тот читает версию именно из него.
COPY Gemfile Gemfile.lock .ruby-version ./
RUN bundle install

COPY package.json pnpm-lock.yaml pnpm-workspace.yaml ./
RUN pnpm install --frozen-lockfile

COPY . .

RUN bin/rails assets:precompile

CMD ["bash", "-c", "make db-prepare && make start"]
