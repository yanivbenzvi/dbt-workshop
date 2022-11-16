run-dbt:
	docker run -it --network=host \
	--mount type=bind,source=$(pwd)/,target=/usr/app \
	--mount type=bind,source=$(pwd)/profiles.yml,target=/root/.dbt/ \
	ghcr.io/dbt-labs/dbt-core:1.1.latest \
	run

docker-build:
	docker build --tag dbt-postgres --target dbt-postgres

