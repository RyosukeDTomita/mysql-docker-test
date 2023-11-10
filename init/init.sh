#!/bin/bash

# DDLでテーブルを作成する
mysql -u root -proot migrationtest < "/docker-entrypoint-initdb.d/sql/users-scheme.sql"

# データを流し込む
mysql -u root -proot migrationtest < "/docker-entrypoint-initdb.d/sql/users-insert.sql"
