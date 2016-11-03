FROM php:5.6

RUN apt-get update -yqq \
    && apt-get install git openjdk-8-jre wget unzip zlibc zlib1g zlib1g-dev libxml2-dev libssl-dev mongodb-server -yqq
RUN docker-php-ext-install pdo_mysql \
    && docker-php-ext-install mbstring \
    && docker-php-ext-install zip \
    && docker-php-ext-install soap \
    && docker-php-ext-install opcache
RUN pecl install xdebug \
    && echo '' | pecl install mongo
RUN wget http://repo1.maven.org/maven2/org/codehaus/sonar/runner/sonar-runner-dist/2.4/sonar-runner-dist-2.4.zip \
    && unzip sonar-runner-dist-2.4.zip \
    && rm sonar-runner-dist-2.4.zip
RUN wget https://sonarsource.bintray.com/Distribution/sonar-scanner-cli/sonar-scanner-2.5.zip \
    && unzip sonar-scanner-2.5.zip \
    && rm sonar-scanner-2.5.zip
