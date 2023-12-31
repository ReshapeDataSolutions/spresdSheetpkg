#' 科目更新
#'
#' @param token
#'
#' @return 无返回值
#' @export
#'
#' @examples
#' deleteCache_acct()
deleteCache_acct<- function(token='057A7F0E-F187-4975-8873-AF71666429AB') {
  sql=paste0("Delete from rds_hrv_src_md_acctInput Where fnumber in(select fnumber from rds_hrv_src_md_acct)")

  res=tsda::sql_delete2(token = token,sql_str = sql)
  return(res)
}
#' 科目更新
#'
#' @param token
#'
#' @return 无返回值
#' @export
#'
#' @examples
#' insertCache_acct()
insertCache_acct <- function(token='057A7F0E-F187-4975-8873-AF71666429AB') {
  sql=paste0("Insert into rds_hrv_src_md_acct
    Select * from rds_hrv_src_md_acctInput ")

  res=tsda::sql_insert2(token = token,sql_str = sql)
  return(res)

}

#' 科目更新
#'
#' @param token
#'
#' @return 无返回值
#' @export
#'
#' @examples
#' deleteAllcache_acct()
deleteAllcache_acct <- function(token='057A7F0E-F187-4975-8873-AF71666429AB') {
  sql=paste0("truncate table rds_hrv_src_md_acctInput ")
  res=tsda::sql_delete2(token = token,sql_str = sql)
  return(res)


}
