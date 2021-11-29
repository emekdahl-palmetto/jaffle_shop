FROM fishtownanalytics/dbt:0.21.0
COPY profiles.yml /root/.dbt/
COPY . /app/
WORKDIR /app
ENV PYTHONPATH=${PYTHONPATH}:${PWD}

RUN ./scripts/entrypoint.sh
ENTRYPOINT [ "" ]