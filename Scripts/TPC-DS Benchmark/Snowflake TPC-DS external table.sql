CREATE OR REPLACE EXTERNAL TABLE "BENCHMARK"."TPC_DS_EXT"."CALL_CENTER" (
CC_CALL_CENTER_SK	NUMBER as to_number(value:cc_call_center_sk),
CC_CALL_CENTER_ID	VARCHAR as to_char(value:cc_call_center_id),
CC_REC_START_DATE	VARCHAR as to_char(value:cc_rec_start_date),
CC_REC_END_DATE	VARCHAR as to_char(value:cc_rec_end_date),
CC_CLOSED_DATE_SK	 NUMBER as to_number(value:cc_closed_date_sk	),
CC_OPEN_DATE_SK	 NUMBER as to_number(value:cc_open_date_sk	),
CC_NAME	 VARCHAR as to_char(value:cc_name	),
CC_CLASS	 VARCHAR as to_char(value:cc_class	),
CC_EMPLOYEES	 NUMBER as to_number(value:cc_employees	),
CC_SQ_FT	 NUMBER as to_number(value:cc_sq_ft	),
CC_HOURS	 VARCHAR as to_char(value:cc_hours	),
CC_MANAGER	 VARCHAR as to_char(value:cc_manager	),
CC_MKT_ID	 NUMBER as to_number(value:cc_mkt_id	),
CC_MKT_CLASS	 VARCHAR as to_char(value:cc_mkt_class	),
CC_MKT_DESC	 VARCHAR as to_char(value:cc_mkt_desc	),
CC_MARKET_MANAGER	 VARCHAR as to_char(value:cc_market_manager	),
CC_DIVISION	 NUMBER as to_number(value:cc_division	),
CC_DIVISION_NAME	 VARCHAR as to_char(value:cc_division_name	),
CC_COMPANY	 NUMBER as to_number(value:cc_company	),
CC_COMPANY_NAME	 VARCHAR as to_char(value:cc_company_name	),
CC_STREET_NUMBER	 VARCHAR as to_char(value:cc_street_number	),
CC_STREET_NAME	 VARCHAR as to_char(value:cc_street_name	),
CC_STREET_TYPE	 VARCHAR as to_char(value:cc_street_type	),
CC_SUITE_NUMBER	 VARCHAR as to_char(value:cc_suite_number	),
CC_CITY	 VARCHAR as to_char(value:cc_city	),
CC_COUNTY	 VARCHAR as to_char(value:cc_county	),
CC_STATE	 VARCHAR as to_char(value:cc_state	),
CC_ZIP	 VARCHAR as to_char(value:cc_zip	),
CC_COUNTRY	 VARCHAR as to_char(value:cc_country	),
CC_GMT_OFFSET	 NUMBER as to_number(value:cc_gmt_offset, 5, 2	),
CC_TAX_PERCENTAGE	 NUMBER as to_number(value:cc_tax_percentage, 5, 2	)) with location = @TPC_DS/call_center/
  auto_refresh = true
  file_format = (type = parquet)
  pattern='.*[.]parquet';

CREATE OR REPLACE EXTERNAL TABLE "BENCHMARK"."TPC_DS_EXT"."CATALOG_PAGE" (
CP_CATALOG_PAGE_SK	 NUMBER as to_number(value:cp_catalog_page_sk	),
CP_CATALOG_PAGE_ID	 VARCHAR as to_char(value:cp_catalog_page_id	),
CP_START_DATE_SK	 NUMBER as to_number(value:cp_start_date_sk	),
CP_END_DATE_SK	 NUMBER as to_number(value:cp_end_date_sk	),
CP_DEPARTMENT	 VARCHAR as to_char(value:cp_department	),
CP_CATALOG_NUMBER	 NUMBER as to_number(value:cp_catalog_number	),
CP_CATALOG_PAGE_NUMBER	 NUMBER as to_number(value:cp_catalog_page_number	),
CP_DESCRIPTION	 VARCHAR as to_char(value:cp_description	),
CP_TYPE	 VARCHAR as to_char(value:cp_type	)) with location = @TPC_DS/catalog_page/
  auto_refresh = true
  file_format = (type = parquet)
  pattern='.*[.]parquet';

CREATE OR REPLACE EXTERNAL TABLE "BENCHMARK"."TPC_DS_EXT"."CATALOG_RETURNS" (
CR_RETURNED_DATE_SK	 NUMBER as to_number(value:cr_returned_date_sk	),
CR_RETURNED_TIME_SK	 NUMBER as to_number(value:cr_returned_time_sk	),
CR_ITEM_SK	 NUMBER as to_number(value:cr_item_sk	),
CR_REFUNDED_CUSTOMER_SK	 NUMBER as to_number(value:cr_refunded_customer_sk	),
CR_REFUNDED_CDEMO_SK	 NUMBER as to_number(value:cr_refunded_cdemo_sk	),
CR_REFUNDED_HDEMO_SK	 NUMBER as to_number(value:cr_refunded_hdemo_sk	),
CR_REFUNDED_ADDR_SK	 NUMBER as to_number(value:cr_refunded_addr_sk	),
CR_RETURNING_CUSTOMER_SK	 NUMBER as to_number(value:cr_returning_customer_sk	),
CR_RETURNING_CDEMO_SK	 NUMBER as to_number(value:cr_returning_cdemo_sk	),
CR_RETURNING_HDEMO_SK	 NUMBER as to_number(value:cr_returning_hdemo_sk	),
CR_RETURNING_ADDR_SK	 NUMBER as to_number(value:cr_returning_addr_sk	),
CR_CALL_CENTER_SK	 NUMBER as to_number(value:cr_call_center_sk	),
CR_CATALOG_PAGE_SK	 NUMBER as to_number(value:cr_catalog_page_sk	),
CR_SHIP_MODE_SK	 NUMBER as to_number(value:cr_ship_mode_sk	),
CR_WAREHOUSE_SK	 NUMBER as to_number(value:cr_warehouse_sk	),
CR_REASON_SK	 NUMBER as to_number(value:cr_reason_sk	),
CR_ORDER_NUMBER	 NUMBER as to_number(value:cr_order_number	),
CR_RETURN_QUANTITY	 NUMBER as to_number(value:cr_return_quantity	),
CR_RETURN_AMOUNT	 NUMBER as to_number(value:cr_return_amount, 7, 2	),
CR_RETURN_TAX	 NUMBER as to_number(value:cr_return_tax, 7, 2	),
CR_RETURN_AMT_INC_TAX	 NUMBER as to_number(value:cr_return_amt_inc_tax, 7, 2	),
CR_FEE	 NUMBER as to_number(value:cr_fee, 7, 2	),
CR_RETURN_SHIP_COST	 NUMBER as to_number(value:cr_return_ship_cost, 7, 2	),
CR_REFUNDED_CASH	 NUMBER as to_number(value:cr_refunded_cash, 7, 2	),
CR_REVERSED_CHARGE	 NUMBER as to_number(value:cr_reversed_charge, 7, 2	),
CR_STORE_CREDIT	 NUMBER as to_number(value:cr_store_credit, 7, 2	),
CR_NET_LOSS	 NUMBER as to_number(value:cr_net_loss, 7, 2	)) with location = @TPC_DS/catalog_returns/
  auto_refresh = true
  file_format = (type = parquet)
  pattern='.*[.]parquet';

CREATE OR REPLACE EXTERNAL TABLE "BENCHMARK"."TPC_DS_EXT"."CATALOG_SALES" (
CS_SOLD_DATE_SK	 NUMBER as to_number(value:cs_sold_date_sk	),
CS_SOLD_TIME_SK	 NUMBER as to_number(value:cs_sold_time_sk	),
CS_SHIP_DATE_SK	 NUMBER as to_number(value:cs_ship_date_sk	),
CS_BILL_CUSTOMER_SK	 NUMBER as to_number(value:cs_bill_customer_sk	),
CS_BILL_CDEMO_SK	 NUMBER as to_number(value:cs_bill_cdemo_sk	),
CS_BILL_HDEMO_SK	 NUMBER as to_number(value:cs_bill_hdemo_sk	),
CS_BILL_ADDR_SK	 NUMBER as to_number(value:cs_bill_addr_sk	),
CS_SHIP_CUSTOMER_SK	 NUMBER as to_number(value:cs_ship_customer_sk	),
CS_SHIP_CDEMO_SK	 NUMBER as to_number(value:cs_ship_cdemo_sk	),
CS_SHIP_HDEMO_SK	 NUMBER as to_number(value:cs_ship_hdemo_sk	),
CS_SHIP_ADDR_SK	 NUMBER as to_number(value:cs_ship_addr_sk	),
CS_CALL_CENTER_SK	 NUMBER as to_number(value:cs_call_center_sk	),
CS_CATALOG_PAGE_SK	 NUMBER as to_number(value:cs_catalog_page_sk	),
CS_SHIP_MODE_SK	 NUMBER as to_number(value:cs_ship_mode_sk	),
CS_WAREHOUSE_SK	 NUMBER as to_number(value:cs_warehouse_sk	),
CS_ITEM_SK	 NUMBER as to_number(value:cs_item_sk	),
CS_PROMO_SK	 NUMBER as to_number(value:cs_promo_sk	),
CS_ORDER_NUMBER	 NUMBER as to_number(value:cs_order_number	),
CS_QUANTITY	 NUMBER as to_number(value:cs_quantity	),
CS_WHOLESALE_COST	 NUMBER as to_number(value:cs_wholesale_cost, 7, 2	),
CS_LIST_PRICE	 NUMBER as to_number(value:cs_list_price, 7, 2	),
CS_SALES_PRICE	 NUMBER as to_number(value:cs_sales_price, 7, 2	),
CS_EXT_DISCOUNT_AMT	 NUMBER as to_number(value:cs_ext_discount_amt, 7, 2	),
CS_EXT_SALES_PRICE	 NUMBER as to_number(value:cs_ext_sales_price, 7, 2	),
CS_EXT_WHOLESALE_COST	 NUMBER as to_number(value:cs_ext_wholesale_cost, 7, 2	),
CS_EXT_LIST_PRICE	 NUMBER as to_number(value:cs_ext_list_price, 7, 2	),
CS_EXT_TAX	 NUMBER as to_number(value:cs_ext_tax, 7, 2	),
CS_COUPON_AMT	 NUMBER as to_number(value:cs_coupon_amt, 7, 2	),
CS_EXT_SHIP_COST	 NUMBER as to_number(value:cs_ext_ship_cost, 7, 2	),
CS_NET_PAID	 NUMBER as to_number(value:cs_net_paid, 7, 2	),
CS_NET_PAID_INC_TAX	 NUMBER as to_number(value:cs_net_paid_inc_tax, 7, 2	),
CS_NET_PAID_INC_SHIP	 NUMBER as to_number(value:cs_net_paid_inc_ship, 7, 2	),
CS_NET_PAID_INC_SHIP_TAX	 NUMBER as to_number(value:cs_net_paid_inc_ship_tax, 7, 2	),
CS_NET_PROFIT	 NUMBER as to_number(value:cs_net_profit, 7, 2	)) with location = @TPC_DS/catalog_sales/
  auto_refresh = true
  file_format = (type = parquet)
  pattern='.*[.]parquet';

CREATE OR REPLACE EXTERNAL TABLE "BENCHMARK"."TPC_DS_EXT"."CUSTOMER" (
C_CUSTOMER_SK	 NUMBER as to_number(value:c_customer_sk	),
C_CUSTOMER_ID	 VARCHAR as to_char(value:c_customer_id	),
C_CURRENT_CDEMO_SK	 NUMBER as to_number(value:c_current_cdemo_sk	),
C_CURRENT_HDEMO_SK	 NUMBER as to_number(value:c_current_hdemo_sk	),
C_CURRENT_ADDR_SK	 NUMBER as to_number(value:c_current_addr_sk	),
C_FIRST_SHIPTO_DATE_SK	 NUMBER as to_number(value:c_first_shipto_date_sk	),
C_FIRST_SALES_DATE_SK	 NUMBER as to_number(value:c_first_sales_date_sk	),
C_SALUTATION	 VARCHAR as to_char(value:c_salutation	),
C_FIRST_NAME	 VARCHAR as to_char(value:c_first_name	),
C_LAST_NAME	 VARCHAR as to_char(value:c_last_name	),
C_PREFERRED_CUST_FLAG	 VARCHAR as to_char(value:c_preferred_cust_flag	),
C_BIRTH_DAY	 NUMBER as to_number(value:c_birth_day	),
C_BIRTH_MONTH	 NUMBER as to_number(value:c_birth_month	),
C_BIRTH_YEAR	 NUMBER as to_number(value:c_birth_year	),
C_BIRTH_COUNTRY	 VARCHAR as to_char(value:c_birth_country	),
C_LOGIN	 VARCHAR as to_char(value:c_login	),
C_EMAIL_ADDRESS	 VARCHAR as to_char(value:c_email_address	),
C_LAST_REVIEW_DATE	 VARCHAR as to_char(value:c_last_review_date	)) with location = @TPC_DS/customer/
  auto_refresh = true
  file_format = (type = parquet)
  pattern='.*[.]parquet';

CREATE OR REPLACE EXTERNAL TABLE "BENCHMARK"."TPC_DS_EXT"."CUSTOMER_ADDRESS" (
CA_ADDRESS_SK	 NUMBER as to_number(value:ca_address_sk	),
CA_ADDRESS_ID	 VARCHAR as to_char(value:ca_address_id	),
CA_STREET_NUMBER	 VARCHAR as to_char(value:ca_street_number	),
CA_STREET_NAME	 VARCHAR as to_char(value:ca_street_name	),
CA_STREET_TYPE	 VARCHAR as to_char(value:ca_street_type	),
CA_SUITE_NUMBER	 VARCHAR as to_char(value:ca_suite_number	),
CA_CITY	 VARCHAR as to_char(value:ca_city	),
CA_COUNTY	 VARCHAR as to_char(value:ca_county	),
CA_STATE	 VARCHAR as to_char(value:ca_state	),
CA_ZIP	 VARCHAR as to_char(value:ca_zip	),
CA_COUNTRY	 VARCHAR as to_char(value:ca_country	),
CA_GMT_OFFSET	 NUMBER as to_number(value:ca_gmt_offset, 5, 2	),
CA_LOCATION_TYPE	 VARCHAR as to_char(value:ca_location_type	)) with location = @TPC_DS/customer_address/
  auto_refresh = true
  file_format = (type = parquet)
  pattern='.*[.]parquet';

CREATE OR REPLACE EXTERNAL TABLE "BENCHMARK"."TPC_DS_EXT"."CUSTOMER_DEMOGRAPHICS" (
CD_DEMO_SK	 NUMBER as to_number(value:cd_demo_sk	),
CD_GENDER	 VARCHAR as to_char(value:cd_gender	),
CD_MARITAL_STATUS	 VARCHAR as to_char(value:cd_marital_status	),
CD_EDUCATION_STATUS	 VARCHAR as to_char(value:cd_education_status	),
CD_PURCHASE_ESTIMATE	 NUMBER as to_number(value:cd_purchase_estimate	),
CD_CREDIT_RATING	 VARCHAR as to_char(value:cd_credit_rating	),
CD_DEP_COUNT	 NUMBER as to_number(value:cd_dep_count	),
CD_DEP_EMPLOYED_COUNT	 NUMBER as to_number(value:cd_dep_employed_count	),
CD_DEP_COLLEGE_COUNT	NUMBER as to_number(value:cd_dep_college_count	)) with location = @TPC_DS/customer_demographics/
  auto_refresh = true
  file_format = (type = parquet)
  pattern='.*[.]parquet';

CREATE OR REPLACE EXTERNAL TABLE "BENCHMARK"."TPC_DS_EXT"."DATE_DIM" (
D_DATE_SK	 NUMBER as to_number(value:d_date_sk	),
D_DATE_ID	 VARCHAR as to_char(value:d_date_id	),
D_DATE	 VARCHAR as to_char(value:d_date	),
D_MONTH_SEQ	 NUMBER as to_number(value:d_month_seq	),
D_WEEK_SEQ	 NUMBER as to_number(value:d_week_seq	),
D_QUARTER_SEQ	 NUMBER as to_number(value:d_quarter_seq	),
D_YEAR	 NUMBER as to_number(value:d_year	),
D_DOW	 NUMBER as to_number(value:d_dow	),
D_MOY	 NUMBER as to_number(value:d_moy	),
D_DOM	 NUMBER as to_number(value:d_dom	),
D_QOY	 NUMBER as to_number(value:d_qoy	),
D_FY_YEAR	 NUMBER as to_number(value:d_fy_year	),
D_FY_QUARTER_SEQ	 NUMBER as to_number(value:d_fy_quarter_seq	),
D_FY_WEEK_SEQ	 NUMBER as to_number(value:d_fy_week_seq	),
D_DAY_NAME	 VARCHAR as to_char(value:d_day_name	),
D_QUARTER_NAME	 VARCHAR as to_char(value:d_quarter_name	),
D_HOLIDAY	 VARCHAR as to_char(value:d_holiday	),
D_WEEKEND	 VARCHAR as to_char(value:d_weekend	),
D_FOLLOWING_HOLIDAY	 VARCHAR as to_char(value:d_following_holiday	),
D_FIRST_DOM	 NUMBER as to_number(value:d_first_dom	),
D_LAST_DOM	 NUMBER as to_number(value:d_last_dom	),
D_SAME_DAY_LY	 NUMBER as to_number(value:d_same_day_ly	),
D_SAME_DAY_LQ	 NUMBER as to_number(value:d_same_day_lq	),
D_CURRENT_DAY	 VARCHAR as to_char(value:d_current_day	),
D_CURRENT_WEEK	 VARCHAR as to_char(value:d_current_week	),
D_CURRENT_MONTH	 VARCHAR as to_char(value:d_current_month	),
D_CURRENT_QUARTER	 VARCHAR as to_char(value:d_current_quarter	),
D_CURRENT_YEAR	 VARCHAR as to_char(value:d_current_year	)) with location = @TPC_DS/date_dim/
  auto_refresh = true
  file_format = (type = parquet)
  pattern='.*[.]parquet';

CREATE OR REPLACE EXTERNAL TABLE "BENCHMARK"."TPC_DS_EXT"."HOUSEHOLD_DEMOGRAPHICS" (
HD_DEMO_SK	 NUMBER as to_number(value:hd_demo_sk	),
HD_INCOME_BAND_SK	 NUMBER as to_number(value:hd_income_band_sk	),
HD_BUY_POTENTIAL	 VARCHAR as to_char(value:hd_buy_potential	),
HD_DEP_COUNT	 NUMBER as to_number(value:hd_dep_count	),
HD_VEHICLE_COUNT	NUMBER as to_number(value:hd_vehicle_count	)) with location = @TPC_DS/household_demographics/
  auto_refresh = true
  file_format = (type = parquet)
  pattern='.*[.]parquet';

CREATE OR REPLACE EXTERNAL TABLE "BENCHMARK"."TPC_DS_EXT"."INCOME_BAND" (
IB_INCOME_BAND_SK	 NUMBER as to_number(value:ib_income_band_sk	),
IB_LOWER_BOUND	 NUMBER as to_number(value:ib_lower_bound	),
IB_UPPER_BOUND	 NUMBER as to_number(value:ib_upper_bound	)) with location = @TPC_DS/income_band/
  auto_refresh = true
  file_format = (type = parquet)
  pattern='.*[.]parquet';

CREATE OR REPLACE EXTERNAL TABLE "BENCHMARK"."TPC_DS_EXT"."INVENTORY" (
INV_DATE_SK	 NUMBER as to_number(value:inv_date_sk	),
INV_ITEM_SK	 NUMBER as to_number(value:inv_item_sk	),
INV_WAREHOUSE_SK	 NUMBER as to_number(value:inv_warehouse_sk	),
INV_QUANTITY_ON_HAND	 NUMBER as to_number(value:inv_quantity_on_hand	)) with location = @TPC_DS/inventory/
  auto_refresh = true
  file_format = (type = parquet)
  pattern='.*[.]parquet';

CREATE OR REPLACE EXTERNAL TABLE "BENCHMARK"."TPC_DS_EXT"."ITEM" (
I_ITEM_SK	 NUMBER as to_number(value:i_item_sk	),
I_ITEM_ID	 VARCHAR as to_char(value:i_item_id	),
I_REC_START_DATE	 VARCHAR as to_char(value:i_rec_start_date	),
I_REC_END_DATE	 VARCHAR as to_char(value:i_rec_end_date	),
I_ITEM_DESC	 VARCHAR as to_char(value:i_item_desc	),
I_CURRENT_PRICE	 NUMBER as to_number(value:i_current_price, 7, 2	),
I_WHOLESALE_COST	 NUMBER as to_number(value:i_wholesale_cost, 7, 2	),
I_BRAND_ID	 NUMBER as to_number(value:i_brand_id	),
I_BRAND	 VARCHAR as to_char(value:i_brand	),
I_CLASS_ID	 NUMBER as to_number(value:i_class_id	),
I_CLASS	 VARCHAR as to_char(value:i_class	),
I_CATEGORY_ID	 NUMBER as to_number(value:i_category_id	),
I_CATEGORY	 VARCHAR as to_char(value:i_category	),
I_MANUFACT_ID	 NUMBER as to_number(value:i_manufact_id	),
I_MANUFACT	 VARCHAR as to_char(value:i_manufact	),
I_SIZE	 VARCHAR as to_char(value:i_size	),
I_FORMULATION	 VARCHAR as to_char(value:i_formulation	),
I_COLOR	 VARCHAR as to_char(value:i_color	),
I_UNITS	 VARCHAR as to_char(value:i_units	),
I_CONTAINER	 VARCHAR as to_char(value:i_container	),
I_MANAGER_ID	 NUMBER as to_number(value:i_manager_id	),
I_PRODUCT_NAME	 VARCHAR as to_char(value:i_product_name	)) with location = @TPC_DS/item/
  auto_refresh = true
  file_format = (type = parquet)
  pattern='.*[.]parquet';

CREATE OR REPLACE EXTERNAL TABLE "BENCHMARK"."TPC_DS_EXT"."PROMOTION" (
P_PROMO_SK	 NUMBER as to_number(value:p_promo_sk	),
P_PROMO_ID	 VARCHAR as to_char(value:p_promo_id	),
P_START_DATE_SK	 NUMBER as to_number(value:p_start_date_sk	),
P_END_DATE_SK	 NUMBER as to_number(value:p_end_date_sk	),
P_ITEM_SK	 NUMBER as to_number(value:p_item_sk	),
P_COST	 NUMBER as to_number(value:p_cost, 15, 2	),
P_RESPONSE_TARGET	 NUMBER as to_number(value:p_response_target	),
P_PROMO_NAME	 VARCHAR as to_char(value:p_promo_name	),
P_CHANNEL_DMAIL	 VARCHAR as to_char(value:p_channel_dmail	),
P_CHANNEL_EMAIL	 VARCHAR as to_char(value:p_channel_email	),
P_CHANNEL_CATALOG	 VARCHAR as to_char(value:p_channel_catalog	),
P_CHANNEL_TV	 VARCHAR as to_char(value:p_channel_tv	),
P_CHANNEL_RADIO	 VARCHAR as to_char(value:p_channel_radio	),
P_CHANNEL_PRESS	 VARCHAR as to_char(value:p_channel_press	),
P_CHANNEL_EVENT	 VARCHAR as to_char(value:p_channel_event	),
P_CHANNEL_DEMO	 VARCHAR as to_char(value:p_channel_demo	),
P_CHANNEL_DETAILS	 VARCHAR as to_char(value:p_channel_details	),
P_PURPOSE	 VARCHAR as to_char(value:p_purpose	),
P_DISCOUNT_ACTIVE	 VARCHAR as to_char(value:p_discount_active	)) with location = @TPC_DS/promotion/
  auto_refresh = true
  file_format = (type = parquet)
  pattern='.*[.]parquet';

CREATE OR REPLACE EXTERNAL TABLE "BENCHMARK"."TPC_DS_EXT"."REASON" (
R_REASON_SK	 NUMBER as to_number(value:r_reason_sk	),
R_REASON_ID	 VARCHAR as to_char(value:r_reason_id	),
R_REASON_DESC	 VARCHAR as to_char(value:r_reason_desc	)) with location = @TPC_DS/reason/
  auto_refresh = true
  file_format = (type = parquet)
  pattern='.*[.]parquet';

CREATE OR REPLACE EXTERNAL TABLE "BENCHMARK"."TPC_DS_EXT"."SHIP_MODE" (
SM_SHIP_MODE_SK	 NUMBER as to_number(value:sm_ship_mode_sk	),
SM_SHIP_MODE_ID	 VARCHAR as to_char(value:sm_ship_mode_id	),
SM_TYPE	 VARCHAR as to_char(value:sm_type	),
SM_CODE	 VARCHAR as to_char(value:sm_code	),
SM_CARRIER	 VARCHAR as to_char(value:sm_carrier	),
SM_CONTRACT	 VARCHAR as to_char(value:sm_contract	)) with location = @TPC_DS/ship_mode/
  auto_refresh = true
  file_format = (type = parquet)
  pattern='.*[.]parquet';

CREATE OR REPLACE EXTERNAL TABLE "BENCHMARK"."TPC_DS_EXT"."STORE" (
S_STORE_SK	 NUMBER as to_number(value:s_store_sk	),
S_STORE_ID	 VARCHAR as to_char(value:s_store_id	),
S_REC_START_DATE	 VARCHAR as to_char(value:s_rec_start_date	),
S_REC_END_DATE	 VARCHAR as to_char(value:s_rec_end_date	),
S_CLOSED_DATE_SK	 NUMBER as to_number(value:s_closed_date_sk	),
S_STORE_NAME	 VARCHAR as to_char(value:s_store_name	),
S_NUMBER_EMPLOYEES	 NUMBER as to_number(value:s_number_employees	),
S_FLOOR_SPACE	 NUMBER as to_number(value:s_floor_space	),
S_HOURS	 VARCHAR as to_char(value:s_hours	),
S_MANAGER	 VARCHAR as to_char(value:s_manager	),
S_MARKET_ID	 NUMBER as to_number(value:s_market_id	),
S_GEOGRAPHY_CLASS	 VARCHAR as to_char(value:s_geography_class	),
S_MARKET_DESC	 VARCHAR as to_char(value:s_market_desc	),
S_MARKET_MANAGER	 VARCHAR as to_char(value:s_market_manager	),
S_DIVISION_ID	 NUMBER as to_number(value:s_division_id	),
S_DIVISION_NAME	 VARCHAR as to_char(value:s_division_name	),
S_COMPANY_ID	 NUMBER as to_number(value:s_company_id	),
S_COMPANY_NAME	 VARCHAR as to_char(value:s_company_name	),
S_STREET_NUMBER	 VARCHAR as to_char(value:s_street_number	),
S_STREET_NAME	 VARCHAR as to_char(value:s_street_name	),
S_STREET_TYPE	 VARCHAR as to_char(value:s_street_type	),
S_SUITE_NUMBER	 VARCHAR as to_char(value:s_suite_number	),
S_CITY	 VARCHAR as to_char(value:s_city	),
S_COUNTY	 VARCHAR as to_char(value:s_county	),
S_STATE	 VARCHAR as to_char(value:s_state	),
S_ZIP	 VARCHAR as to_char(value:s_zip	),
S_COUNTRY	 VARCHAR as to_char(value:s_country	),
S_GMT_OFFSET	 NUMBER as to_number(value:s_gmt_offset, 5, 2	),
S_TAX_PRECENTAGE	 NUMBER as to_number(value:s_tax_precentage, 5, 2	)) with location = @TPC_DS/store/
  auto_refresh = true
  file_format = (type = parquet)
  pattern='.*[.]parquet';

CREATE OR REPLACE EXTERNAL TABLE "BENCHMARK"."TPC_DS_EXT"."STORE_RETURNS" (
SR_RETURNED_DATE_SK	 NUMBER as to_number(value:sr_returned_date_sk	),
SR_RETURN_TIME_SK	 NUMBER as to_number(value:sr_return_time_sk	),
SR_ITEM_SK	 NUMBER as to_number(value:sr_item_sk	),
SR_CUSTOMER_SK	 NUMBER as to_number(value:sr_customer_sk	),
SR_CDEMO_SK	 NUMBER as to_number(value:sr_cdemo_sk	),
SR_HDEMO_SK	 NUMBER as to_number(value:sr_hdemo_sk	),
SR_ADDR_SK	 NUMBER as to_number(value:sr_addr_sk	),
SR_STORE_SK	 NUMBER as to_number(value:sr_store_sk	),
SR_REASON_SK	 NUMBER as to_number(value:sr_reason_sk	),
SR_TICKET_NUMBER	 NUMBER as to_number(value:sr_ticket_number	),
SR_RETURN_QUANTITY	 NUMBER as to_number(value:sr_return_quantity	),
SR_RETURN_AMT	 NUMBER as to_number(value:sr_return_amt, 7, 2	),
SR_RETURN_TAX	 NUMBER as to_number(value:sr_return_tax, 7, 2	),
SR_RETURN_AMT_INC_TAX	 NUMBER as to_number(value:sr_return_amt_inc_tax, 7, 2	),
SR_FEE	 NUMBER as to_number(value:sr_fee, 7, 2	),
SR_RETURN_SHIP_COST	 NUMBER as to_number(value:sr_return_ship_cost, 7, 2	),
SR_REFUNDED_CASH	 NUMBER as to_number(value:sr_refunded_cash, 7, 2	),
SR_REVERSED_CHARGE	 NUMBER as to_number(value:sr_reversed_charge, 7, 2	),
SR_STORE_CREDIT	 NUMBER as to_number(value:sr_store_credit, 7, 2	),
SR_NET_LOSS	 NUMBER as to_number(value:sr_net_loss, 7, 2	)) with location = @TPC_DS/store_returns/
  auto_refresh = true
  file_format = (type = parquet)
  pattern='.*[.]parquet';

CREATE OR REPLACE EXTERNAL TABLE "BENCHMARK"."TPC_DS_EXT"."STORE_SALES" (
SS_SOLD_DATE_SK	 NUMBER as to_number(value:ss_sold_date_sk	),
SS_SOLD_TIME_SK	 NUMBER as to_number(value:ss_sold_time_sk	),
SS_ITEM_SK	 NUMBER as to_number(value:ss_item_sk	),
SS_CUSTOMER_SK	 NUMBER as to_number(value:ss_customer_sk	),
SS_CDEMO_SK	 NUMBER as to_number(value:ss_cdemo_sk	),
SS_HDEMO_SK	 NUMBER as to_number(value:ss_hdemo_sk	),
SS_ADDR_SK	 NUMBER as to_number(value:ss_addr_sk	),
SS_STORE_SK	 NUMBER as to_number(value:ss_store_sk	),
SS_PROMO_SK	 NUMBER as to_number(value:ss_promo_sk	),
SS_TICKET_NUMBER	 NUMBER as to_number(value:ss_ticket_number	),
SS_QUANTITY	 NUMBER as to_number(value:ss_quantity	),
SS_WHOLESALE_COST	 NUMBER as to_number(value:ss_wholesale_cost, 7, 2	),
SS_LIST_PRICE	 NUMBER as to_number(value:ss_list_price, 7, 2	),
SS_SALES_PRICE	 NUMBER as to_number(value:ss_sales_price, 7, 2	),
SS_EXT_DISCOUNT_AMT	 NUMBER as to_number(value:ss_ext_discount_amt, 7, 2	),
SS_EXT_SALES_PRICE	 NUMBER as to_number(value:ss_ext_sales_price, 7, 2	),
SS_EXT_WHOLESALE_COST	 NUMBER as to_number(value:ss_ext_wholesale_cost, 7, 2	),
SS_EXT_LIST_PRICE	 NUMBER as to_number(value:ss_ext_list_price, 7, 2	),
SS_EXT_TAX	 NUMBER as to_number(value:ss_ext_tax, 7, 2	),
SS_COUPON_AMT	 NUMBER as to_number(value:ss_coupon_amt, 7, 2	),
SS_NET_PAID	 NUMBER as to_number(value:ss_net_paid, 7, 2	),
SS_NET_PAID_INC_TAX	 NUMBER as to_number(value:ss_net_paid_inc_tax, 7, 2	),
SS_NET_PROFIT	 NUMBER as to_number(value:ss_net_profit, 7, 2	)) with location = @TPC_DS/store_sales/
  auto_refresh = true
  file_format = (type = parquet)
  pattern='.*[.]parquet';

CREATE OR REPLACE EXTERNAL TABLE "BENCHMARK"."TPC_DS_EXT"."TIME_DIM" (
T_TIME_SK	 NUMBER as to_number(value:t_time_sk	),
T_TIME_ID	 VARCHAR as to_char(value:t_time_id	),
T_TIME	 NUMBER as to_number(value:t_time	),
T_HOUR	 NUMBER as to_number(value:t_hour	),
T_MINUTE	 NUMBER as to_number(value:t_minute	),
T_SECOND	 NUMBER as to_number(value:t_second	),
T_AM_PM	 VARCHAR as to_char(value:t_am_pm	),
T_SHIFT	 VARCHAR as to_char(value:t_shift	),
T_SUB_SHIFT	 VARCHAR as to_char(value:t_sub_shift	),
T_MEAL_TIME	 VARCHAR as to_char(value:t_meal_time	)) with location = @TPC_DS/time_dim/
  auto_refresh = true
  file_format = (type = parquet)
  pattern='.*[.]parquet';

CREATE OR REPLACE EXTERNAL TABLE "BENCHMARK"."TPC_DS_EXT"."WAREHOUSE" (
W_WAREHOUSE_SK	 NUMBER as to_number(value:w_warehouse_sk	),
W_WAREHOUSE_ID	 VARCHAR as to_char(value:w_warehouse_id	),
W_WAREHOUSE_NAME	 VARCHAR as to_char(value:w_warehouse_name	),
W_WAREHOUSE_SQ_FT	 NUMBER as to_number(value:w_warehouse_sq_ft	),
W_STREET_NUMBER	 VARCHAR as to_char(value:w_street_number	),
W_STREET_NAME	 VARCHAR as to_char(value:w_street_name	),
W_STREET_TYPE	 VARCHAR as to_char(value:w_street_type	),
W_SUITE_NUMBER	 VARCHAR as to_char(value:w_suite_number	),
W_CITY	 VARCHAR as to_char(value:w_city	),
W_COUNTY	 VARCHAR as to_char(value:w_county	),
W_STATE	 VARCHAR as to_char(value:w_state	),
W_ZIP	 VARCHAR as to_char(value:w_zip	),
W_COUNTRY	 VARCHAR as to_char(value:w_country	),
W_GMT_OFFSET	 NUMBER as to_number(value:w_gmt_offset, 5, 2	)) with location = @TPC_DS/warehouse/
  auto_refresh = true
  file_format = (type = parquet)
  pattern='.*[.]parquet';

CREATE OR REPLACE EXTERNAL TABLE "BENCHMARK"."TPC_DS_EXT"."WEB_PAGE" (
WP_WEB_PAGE_SK	 NUMBER as to_number(value:wp_web_page_sk	),
WP_WEB_PAGE_ID	 VARCHAR as to_char(value:wp_web_page_id	),
WP_REC_START_DATE	 VARCHAR as to_char(value:wp_rec_start_date	),
WP_REC_END_DATE	 VARCHAR as to_char(value:wp_rec_end_date	),
WP_CREATION_DATE_SK	 NUMBER as to_number(value:wp_creation_date_sk	),
WP_ACCESS_DATE_SK	 NUMBER as to_number(value:wp_access_date_sk	),
WP_AUTOGEN_FLAG	 VARCHAR as to_char(value:wp_autogen_flag	),
WP_CUSTOMER_SK	 NUMBER as to_number(value:wp_customer_sk	),
WP_URL	 VARCHAR as to_char(value:wp_url	),
WP_TYPE	 VARCHAR as to_char(value:wp_type	),
WP_CHAR_COUNT	 NUMBER as to_number(value:wp_char_count	),
WP_LINK_COUNT	 NUMBER as to_number(value:wp_link_count	),
WP_IMAGE_COUNT	 NUMBER as to_number(value:wp_image_count	),
WP_MAX_AD_COUNT	 NUMBER as to_number(value:wp_max_ad_count	)) with location = @TPC_DS/web_page/
  auto_refresh = true
  file_format = (type = parquet)
  pattern='.*[.]parquet';

CREATE OR REPLACE EXTERNAL TABLE "BENCHMARK"."TPC_DS_EXT"."WEB_RETURNS" (
WR_RETURNED_DATE_SK	 NUMBER as to_number(value:wr_returned_date_sk	),
WR_RETURNED_TIME_SK	 NUMBER as to_number(value:wr_returned_time_sk	),
WR_ITEM_SK	 NUMBER as to_number(value:wr_item_sk	),
WR_REFUNDED_CUSTOMER_SK	 NUMBER as to_number(value:wr_refunded_customer_sk	),
WR_REFUNDED_CDEMO_SK	 NUMBER as to_number(value:wr_refunded_cdemo_sk	),
WR_REFUNDED_HDEMO_SK	 NUMBER as to_number(value:wr_refunded_hdemo_sk	),
WR_REFUNDED_ADDR_SK	 NUMBER as to_number(value:wr_refunded_addr_sk	),
WR_RETURNING_CUSTOMER_SK	 NUMBER as to_number(value:wr_returning_customer_sk	),
WR_RETURNING_CDEMO_SK	 NUMBER as to_number(value:wr_returning_cdemo_sk	),
WR_RETURNING_HDEMO_SK	 NUMBER as to_number(value:wr_returning_hdemo_sk	),
WR_RETURNING_ADDR_SK	 NUMBER as to_number(value:wr_returning_addr_sk	),
WR_WEB_PAGE_SK	 NUMBER as to_number(value:wr_web_page_sk	),
WR_REASON_SK	 NUMBER as to_number(value:wr_reason_sk	),
WR_ORDER_NUMBER	 NUMBER as to_number(value:wr_order_number	),
WR_RETURN_QUANTITY	 NUMBER as to_number(value:wr_return_quantity	),
WR_RETURN_AMT	 NUMBER as to_number(value:wr_return_amt, 7, 2	),
WR_RETURN_TAX	 NUMBER as to_number(value:wr_return_tax, 7, 2	),
WR_RETURN_AMT_INC_TAX	 NUMBER as to_number(value:wr_return_amt_inc_tax, 7, 2	),
WR_FEE	 NUMBER as to_number(value:wr_fee, 7, 2	),
WR_RETURN_SHIP_COST	 NUMBER as to_number(value:wr_return_ship_cost, 7, 2	),
WR_REFUNDED_CASH	 NUMBER as to_number(value:wr_refunded_cash, 7, 2	),
WR_REVERSED_CHARGE	 NUMBER as to_number(value:wr_reversed_charge, 7, 2	),
WR_ACCOUNT_CREDIT	 NUMBER as to_number(value:wr_account_credit, 7, 2	),
WR_NET_LOSS	 NUMBER as to_number(value:wr_net_loss, 7, 2	)) with location = @TPC_DS/web_returns/
  auto_refresh = true
  file_format = (type = parquet)
  pattern='.*[.]parquet';

CREATE OR REPLACE EXTERNAL TABLE "BENCHMARK"."TPC_DS_EXT"."WEB_SALES" (
WS_SOLD_DATE_SK	 NUMBER as to_number(value:ws_sold_date_sk	),
WS_SOLD_TIME_SK	 NUMBER as to_number(value:ws_sold_time_sk	),
WS_SHIP_DATE_SK	 NUMBER as to_number(value:ws_ship_date_sk	),
WS_ITEM_SK	 NUMBER as to_number(value:ws_item_sk	),
WS_BILL_CUSTOMER_SK	 NUMBER as to_number(value:ws_bill_customer_sk	),
WS_BILL_CDEMO_SK	 NUMBER as to_number(value:ws_bill_cdemo_sk	),
WS_BILL_HDEMO_SK	 NUMBER as to_number(value:ws_bill_hdemo_sk	),
WS_BILL_ADDR_SK	 NUMBER as to_number(value:ws_bill_addr_sk	),
WS_SHIP_CUSTOMER_SK	 NUMBER as to_number(value:ws_ship_customer_sk	),
WS_SHIP_CDEMO_SK	 NUMBER as to_number(value:ws_ship_cdemo_sk	),
WS_SHIP_HDEMO_SK	 NUMBER as to_number(value:ws_ship_hdemo_sk	),
WS_SHIP_ADDR_SK	 NUMBER as to_number(value:ws_ship_addr_sk	),
WS_WEB_PAGE_SK	 NUMBER as to_number(value:ws_web_page_sk	),
WS_WEB_SITE_SK	 NUMBER as to_number(value:ws_web_site_sk	),
WS_SHIP_MODE_SK	 NUMBER as to_number(value:ws_ship_mode_sk	),
WS_WAREHOUSE_SK	 NUMBER as to_number(value:ws_warehouse_sk	),
WS_PROMO_SK	 NUMBER as to_number(value:ws_promo_sk	),
WS_ORDER_NUMBER	 NUMBER as to_number(value:ws_order_number	),
WS_QUANTITY	 NUMBER as to_number(value:ws_quantity	),
WS_WHOLESALE_COST	 NUMBER as to_number(value:ws_wholesale_cost, 7, 2	),
WS_LIST_PRICE	 NUMBER as to_number(value:ws_list_price, 7, 2	),
WS_SALES_PRICE	 NUMBER as to_number(value:ws_sales_price, 7, 2	),
WS_EXT_DISCOUNT_AMT	 NUMBER as to_number(value:ws_ext_discount_amt, 7, 2	),
WS_EXT_SALES_PRICE	 NUMBER as to_number(value:ws_ext_sales_price, 7, 2	),
WS_EXT_WHOLESALE_COST	 NUMBER as to_number(value:ws_ext_wholesale_cost, 7, 2	),
WS_EXT_LIST_PRICE	 NUMBER as to_number(value:ws_ext_list_price, 7, 2	),
WS_EXT_TAX	 NUMBER as to_number(value:ws_ext_tax, 7, 2	),
WS_COUPON_AMT	 NUMBER as to_number(value:ws_coupon_amt, 7, 2	),
WS_EXT_SHIP_COST	 NUMBER as to_number(value:ws_ext_ship_cost, 7, 2	),
WS_NET_PAID	 NUMBER as to_number(value:ws_net_paid, 7, 2	),
WS_NET_PAID_INC_TAX	 NUMBER as to_number(value:ws_net_paid_inc_tax, 7, 2	),
WS_NET_PAID_INC_SHIP	 NUMBER as to_number(value:ws_net_paid_inc_ship, 7, 2	),
WS_NET_PAID_INC_SHIP_TAX	 NUMBER as to_number(value:ws_net_paid_inc_ship_tax, 7, 2	),
WS_NET_PROFIT	 NUMBER as to_number(value:ws_net_profit, 7, 2	)) with location = @TPC_DS/web_sales/
  auto_refresh = true
  file_format = (type = parquet)
  pattern='.*[.]parquet';

CREATE OR REPLACE EXTERNAL TABLE "BENCHMARK"."TPC_DS_EXT"."WEB_SITE" (
WEB_SITE_SK	 NUMBER as to_number(value:web_site_sk	),
WEB_SITE_ID	 VARCHAR as to_char(value:web_site_id	),
WEB_REC_START_DATE	 VARCHAR as to_char(value:web_rec_start_date	),
WEB_REC_END_DATE	 VARCHAR as to_char(value:web_rec_end_date	),
WEB_NAME	 VARCHAR as to_char(value:web_name	),
WEB_OPEN_DATE_SK	 NUMBER as to_number(value:web_open_date_sk	),
WEB_CLOSE_DATE_SK	 NUMBER as to_number(value:web_close_date_sk	),
WEB_CLASS	 VARCHAR as to_char(value:web_class	),
WEB_MANAGER	 VARCHAR as to_char(value:web_manager	),
WEB_MKT_ID	 NUMBER as to_number(value:web_mkt_id	),
WEB_MKT_CLASS	 VARCHAR as to_char(value:web_mkt_class	),
WEB_MKT_DESC	 VARCHAR as to_char(value:web_mkt_desc	),
WEB_MARKET_MANAGER	 VARCHAR as to_char(value:web_market_manager	),
WEB_COMPANY_ID	 NUMBER as to_number(value:web_company_id	),
WEB_COMPANY_NAME	 VARCHAR as to_char(value:web_company_name	),
WEB_STREET_NUMBER	 VARCHAR as to_char(value:web_street_number	),
WEB_STREET_NAME	 VARCHAR as to_char(value:web_street_name	),
WEB_STREET_TYPE	 VARCHAR as to_char(value:web_street_type	),
WEB_SUITE_NUMBER	 VARCHAR as to_char(value:web_suite_number	),
WEB_CITY	 VARCHAR as to_char(value:web_city	),
WEB_COUNTY	 VARCHAR as to_char(value:web_county	),
WEB_STATE	 VARCHAR as to_char(value:web_state	),
WEB_ZIP	 VARCHAR as to_char(value:web_zip	),
WEB_COUNTRY	 VARCHAR as to_char(value:web_country	),
WEB_GMT_OFFSET	 NUMBER as to_number(value:web_gmt_offset, 7, 2	),
WEB_TAX_PERCENTAGE	 NUMBER as to_number(value:web_tax_percentage, 7, 2	)) with location = @TPC_DS/web_site/
  auto_refresh = true
  file_format = (type = parquet)
  pattern='.*[.]parquet';
