# Part 0 ------------------------------------------------------------------
# 本程序为酒店定价模型
# 主要运用机器学习算法：决策树、随机森林、SVM、神经网络
# 目的：检测对酒店定价相关的重要模型变量

rm(list = ls())
setwd("~/Hotel_Pricing_Model")

query_BI <- function(strSQL){
  library(RMySQL)
  con<-dbConnect(RMySQL::MySQL(),host='10.10.81.5',port=3306,username='biuser',password='biuser')
  dbSendQuery(con, "SET character_set_client = gbk")
  dbSendQuery(con, "SET character_set_connection = gbk")
  dbSendQuery(con, "SET character_set_results = gbk")
  dbSendQuery(con,'SET NAMES utf8')
  res <- dbFetch(dbSendQuery(con,strSQL), n = -1) # fetch all results
  dbDisconnect(con)
  return (res)
}



# Part 1 酒店地址密度对酒店议价能力影响 ---------------------------------------------------------
strSQL <- "
SELECT 
a.hotel_id
,b.city_code
,c.hotels_1km
,c.hotels_3km
,c.hotels_5km
,c.hotels_10km
,a.is_succ
FROM (
SELECT #* 
DISTINCT
qn_hotel_id AS hotel_id,
CASE WHEN is_successful LIKE '%不成功%' THEN 0 ELSE 1 END AS is_succ
FROM crawer.tmp_outbound_result
WHERE is_answered LIKE '%成功接听%' AND qn_hotel_id IS NOT NULL
UNION ALL
SELECT 
DISTINCT
hotelid,
CASE WHEN isSuccess LIKE '%成功（撮价成功）%' THEN 1 ELSE 0 END AS is_succ
FROM ods.a_call_test_back
WHERE phoneStatus LIKE '%成功接听%'
UNION ALL
SELECT #*
DISTINCT
hotel_id,
CASE WHEN cancel_reason LIKE '%价格过低%' THEN 0 ELSE 1 END AS is_succ
FROM ots.cs_order_process_detail WHERE result is NOT NULL
AND (cancel_reason LIKE '%价格过低%'
OR cancel_reason IS NULL)
) a
LEFT JOIN ht.q_hotel b ON a.hotel_id = b.id
LEFT JOIN ht.q_hotel_density c ON a.hotel_id = c.hotel_id
WHERE b.id IS NOT NULL
;
"
model_data <- query_BI(strSQL)

# 建立决策树模型





