copy into "BENCHMARK"."TPC_DS_SF10000"."CALL_CENTER"
  from @TPS_DS/call_center.csv file_format = (format_name = 'mycsv');

copy into "BENCHMARK"."TPC_DS_SF10000"."CATALOG_PAGE"
  from @TPS_DS/catalog_page.csv file_format = (format_name = 'mycsv');

copy into "BENCHMARK"."TPC_DS_SF10000"."CATALOG_RETURNS"
  from @TPS_DS/catalog_returns.csv file_format = (format_name = 'mycsv');

copy into "BENCHMARK"."TPC_DS_SF10000"."CATALOG_SALES"
  from @TPS_DS/catalog_sales.csv file_format = (format_name = 'mycsv');

copy into "BENCHMARK"."TPC_DS_SF10000"."CUSTOMER"
  from @TPS_DS/customer.csv file_format = (format_name = 'mycsv');

copy into "BENCHMARK"."TPC_DS_SF10000"."CUSTOMER_ADDRESS"
  from @TPS_DS/customer_address.csv file_format = (format_name = 'mycsv');

copy into "BENCHMARK"."TPC_DS_SF10000"."CUSTOMER_DEMOGRAPHICS"
  from @TPS_DS/customer_demographics.csv file_format = (format_name = 'mycsv');

copy into "BENCHMARK"."TPC_DS_SF10000"."DATE_DIM"
  from @TPS_DS/date_dim.csv file_format = (format_name = 'mycsv');

copy into "BENCHMARK"."TPC_DS_SF10000"."HOUSEHOLD_DEMOGRAPHICS"
  from @TPS_DS/household_demographics.csv file_format = (format_name = 'mycsv');

copy into "BENCHMARK"."TPC_DS_SF10000"."INCOME_BAND"
  from @TPS_DS/income_band.csv file_format = (format_name = 'mycsv');

copy into "BENCHMARK"."TPC_DS_SF10000"."INVENTORY"
  from @TPS_DS/inventory.csv file_format = (format_name = 'mycsv');

copy into "BENCHMARK"."TPC_DS_SF10000"."ITEM"
  from @TPS_DS/item.csv file_format = (format_name = 'mycsv');

copy into "BENCHMARK"."TPC_DS_SF10000"."PROMOTION"
  from @TPS_DS/promotion.csv file_format = (format_name = 'mycsv');

copy into "BENCHMARK"."TPC_DS_SF10000"."REASON"
  from @TPS_DS/reason.csv file_format = (format_name = 'mycsv');

copy into "BENCHMARK"."TPC_DS_SF10000"."SHIP_MODE"
  from @TPS_DS/ship_mode.csv file_format = (format_name = 'mycsv');

copy into "BENCHMARK"."TPC_DS_SF10000"."STORE"
  from @TPS_DS/store.csv file_format = (format_name = 'mycsv');

copy into "BENCHMARK"."TPC_DS_SF10000"."STORE_RETURNS"
  from @TPS_DS/store_returns.csv file_format = (format_name = 'mycsv');

copy into "BENCHMARK"."TPC_DS_SF10000"."STORE_SALES"
  from @TPS_DS/store_sales.csv file_format = (format_name = 'mycsv');

copy into "BENCHMARK"."TPC_DS_SF10000"."TIME_DIM"
  from @TPS_DS/time_dim.csv file_format = (format_name = 'mycsv');

copy into "BENCHMARK"."TPC_DS_SF10000"."WAREHOUSE"
  from @TPS_DS/warehouse.csv file_format = (format_name = 'mycsv');

copy into "BENCHMARK"."TPC_DS_SF10000"."WEB_PAGE"
  from @TPS_DS/web_page.csv file_format = (format_name = 'mycsv');

copy into "BENCHMARK"."TPC_DS_SF10000"."WEB_RETURNS"
  from @TPS_DS/web_returns.csv file_format = (format_name = 'mycsv');

copy into "BENCHMARK"."TPC_DS_SF10000"."WEB_SALES"
  from @TPS_DS/web_sales.csv file_format = (format_name = 'mycsv');

copy into "BENCHMARK"."TPC_DS_SF10000"."WEB_SITE"
  from @TPS_DS/web_site.csv file_format = (format_name = 'mycsv');
