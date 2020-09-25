create table "TPC-DS"."mrkt-benchmark-data"."tpc-ds_sf10000"."Partition"."call_center"  as SELECT * FROM "TPC-DS"."mrkt-benchmark-data"."tpc-ds_sf10000"."256Parquet"."call_center";

create table "TPC-DS"."mrkt-benchmark-data"."tpc-ds_sf10000"."Partition"."catalog_returns" HASH PARTITION BY (CR_RETURNED_DATE_SK) as SELECT * FROM "TPC-DS"."mrkt-benchmark-data"."tpc-ds_sf10000"."256Parquet"."catalog_returns";

create table "TPC-DS"."mrkt-benchmark-data"."tpc-ds_sf10000"."Partition"."catalog_sales" HASH PARTITION BY (CS_SOLD_DATE_SK) as SELECT * FROM "TPC-DS"."mrkt-benchmark-data"."tpc-ds_sf10000"."256Parquet"."catalog_sales";

create table "TPC-DS"."mrkt-benchmark-data"."tpc-ds_sf10000"."Partition"."catalog_page" as SELECT * FROM "TPC-DS"."mrkt-benchmark-data"."tpc-ds_sf10000"."256Parquet"."catalog_page";

create table "TPC-DS"."mrkt-benchmark-data"."tpc-ds_sf10000"."Partition"."customer_address" as SELECT * FROM "TPC-DS"."mrkt-benchmark-data"."tpc-ds_sf10000"."256Parquet"."customer_address";

create table "TPC-DS"."mrkt-benchmark-data"."tpc-ds_sf10000"."Partition"."customer_demographics" as SELECT * FROM "TPC-DS"."mrkt-benchmark-data"."tpc-ds_sf10000"."256Parquet"."customer_demographics";

create table "TPC-DS"."mrkt-benchmark-data"."tpc-ds_sf10000"."Partition"."customer" as SELECT * FROM "TPC-DS"."mrkt-benchmark-data"."tpc-ds_sf10000"."256Parquet"."customer";

create table "TPC-DS"."mrkt-benchmark-data"."tpc-ds_sf10000"."Partition"."date_dim" as SELECT * FROM "TPC-DS"."mrkt-benchmark-data"."tpc-ds_sf10000"."256Parquet"."date_dim";

create table "TPC-DS"."mrkt-benchmark-data"."tpc-ds_sf10000"."Partition"."household_demographics" as SELECT * FROM "TPC-DS"."mrkt-benchmark-data"."tpc-ds_sf10000"."256Parquet"."household_demographics";

create table "TPC-DS"."mrkt-benchmark-data"."tpc-ds_sf10000"."Partition"."income_band" as SELECT * FROM "TPC-DS"."mrkt-benchmark-data"."tpc-ds_sf10000"."256Parquet"."income_band";

create table "TPC-DS"."mrkt-benchmark-data"."tpc-ds_sf10000"."Partition"."inventory" as SELECT * FROM "TPC-DS"."mrkt-benchmark-data"."tpc-ds_sf10000"."256Parquet"."inventory";

create table "TPC-DS"."mrkt-benchmark-data"."tpc-ds_sf10000"."Partition"."item" as SELECT * FROM "TPC-DS"."mrkt-benchmark-data"."tpc-ds_sf10000"."256Parquet"."item";

create table "TPC-DS"."mrkt-benchmark-data"."tpc-ds_sf10000"."Partition"."promotion" as SELECT * FROM "TPC-DS"."mrkt-benchmark-data"."tpc-ds_sf10000"."256Parquet"."promotion";

create table "TPC-DS"."mrkt-benchmark-data"."tpc-ds_sf10000"."Partition"."reason" as SELECT * FROM "TPC-DS"."mrkt-benchmark-data"."tpc-ds_sf10000"."256Parquet"."reason";

create table "TPC-DS"."mrkt-benchmark-data"."tpc-ds_sf10000"."Partition"."ship_mode" as SELECT * FROM "TPC-DS"."mrkt-benchmark-data"."tpc-ds_sf10000"."256Parquet"."ship_mode";

create table "TPC-DS"."mrkt-benchmark-data"."tpc-ds_sf10000"."Partition"."store_returns" HASH PARTITION BY (SR_RETURNED_DATE_SK) as SELECT * FROM "TPC-DS"."mrkt-benchmark-data"."tpc-ds_sf10000"."256Parquet"."store_returns";

create table "TPC-DS"."mrkt-benchmark-data"."tpc-ds_sf10000"."Partition"."store_sales" HASH PARTITION BY (SS_SOLD_DATE_SK) as SELECT * FROM "TPC-DS"."mrkt-benchmark-data"."tpc-ds_sf10000"."256Parquet"."store_sales";

create table "TPC-DS"."mrkt-benchmark-data"."tpc-ds_sf10000"."Partition"."store" as SELECT * FROM "TPC-DS"."mrkt-benchmark-data"."tpc-ds_sf10000"."256Parquet"."store";

create table "TPC-DS"."mrkt-benchmark-data"."tpc-ds_sf10000"."Partition"."time_dim" as SELECT * FROM "TPC-DS"."mrkt-benchmark-data"."tpc-ds_sf10000"."256Parquet"."time_dim";

create table "TPC-DS"."mrkt-benchmark-data"."tpc-ds_sf10000"."Partition"."warehouse" as SELECT * FROM "TPC-DS"."mrkt-benchmark-data"."tpc-ds_sf10000"."256Parquet"."warehouse";

create table "TPC-DS"."mrkt-benchmark-data"."tpc-ds_sf10000"."Partition"."web_page" as SELECT * FROM "TPC-DS"."mrkt-benchmark-data"."tpc-ds_sf10000"."256Parquet"."web_page";

create table "TPC-DS"."mrkt-benchmark-data"."tpc-ds_sf10000"."Partition"."web_returns" HASH PARTITION BY (WR_RETURNED_DATE_SK) as SELECT * FROM "TPC-DS"."mrkt-benchmark-data"."tpc-ds_sf10000"."256Parquet"."web_returns";

create table "TPC-DS"."mrkt-benchmark-data"."tpc-ds_sf10000"."Partition"."web_sales" HASH PARTITION BY (WS_SOLD_DATE_SK) as SELECT * FROM "TPC-DS"."mrkt-benchmark-data"."tpc-ds_sf10000"."256Parquet"."web_sales";

create table "TPC-DS"."mrkt-benchmark-data"."tpc-ds_sf10000"."Partition"."web_site" as SELECT * FROM "TPC-DS"."mrkt-benchmark-data"."tpc-ds_sf10000"."256Parquet"."web_site";
