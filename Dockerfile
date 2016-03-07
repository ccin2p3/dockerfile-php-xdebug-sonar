FROM php:5.6

RUN apt-get update -yqq
RUN apt-get install git openjdk-7-jre wget unzip zlibc zlib1g zlib1g-dev libxml2-dev libssl-dev mongodb-server -yqq
RUN docker-php-ext-install pdo_mysql
RUN docker-php-ext-install mbstring
RUN docker-php-ext-install zip
RUN docker-php-ext-install soap
RUN pecl install xdebug
RUN pecl install mongodb
RUN wget http://repo1.maven.org/maven2/org/codehaus/sonar/runner/sonar-runner-dist/2.4/sonar-runner-dist-2.4.zip
RUN unzip sonar-runner-dist-2.4.zip
RUN rm sonar-runner-dist-2.4.zip
RUN wget https://sonarsource.bintray.com/Distribution/sonar-scanner-cli/sonar-scanner-2.5.zip
RUN unzip sonar-scanner-2.5.zip
RUN rm sonar-scanner-2.5.zip
