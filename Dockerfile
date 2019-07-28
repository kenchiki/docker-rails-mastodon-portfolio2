FROM ruby:2.6.3

#RUN apt-get update -qq && apt-get install -y nodejs

# install nodejs
#RUN curl -s -L git.io/nodebrew | perl - setup
#ENV PATH /root/.nodebrew/current/bin:$PATH
#RUN nodebrew install-binary v10.16.0
#RUN nodebrew use v10.16.0


# httpsをダウンロードするのに必要（ないとエラー）
# updateしないとapt-transport-httpsが見つからなくてエラー
RUN apt-get update -qq && apt-get install -y apt-transport-https libssl-dev

# Node.jsをインストール
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - && \
    apt-get install nodejs

# yarnパッケージ管理ツールインストール
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update
RUN apt-get install -y yarn

# bundle install
RUN mkdir /rails-app
WORKDIR /rails-app
RUN gem install bundler
RUN gem install debase -v "0.2.3.beta5"
RUN gem install ruby-debug-ide -v "0.7.0.beta7"
ADD ./Gemfile Gemfile
ADD ./Gemfile.lock Gemfile.lock
RUN bundle install

ADD ./ /rails-app
