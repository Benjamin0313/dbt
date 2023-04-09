1. dbtフォルダに入る
2. docker build -t env_for_dbt . イメージ作成
3. docker run -it -v $(pwd):/Users/daisuke.harato/Documents/mypoc/dbt --name env_for_dbt env_for_dbt
4. docker start -i env_for_dbt コンテナをスタートする
5. docker exec -it env_for_dbt /bin/bash 起動しているコンテナに入る

- profiles.ymlの一次対応
export DBT_PROFILES_DIR=/Users/daisuke.harato/Documents/mypoc/dbt/dbt_poc/.dbt

- pipx
  - https://pypa.github.io/pipx/installation/
- pipx run --pip-args="dbt-snowflake" dbt-osmosis yaml refactor

- pip install dbt-osmosis dbt-snowflake