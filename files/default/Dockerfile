FROM registry:0.8.1

RUN apt-get -y install libmysqlclient-dev
RUN pip install mysql-python

ENV SEARCH_BACKEND sqlalchemy
ENV SQLALCHEMY_INDEX_DATABASE mysql+mysqldb://docker_registry:DD5664CB-7FEF-4618-BE23-4FC2A55CBF15@33.33.33.11/docker_registry

CMD exec docker-registry
