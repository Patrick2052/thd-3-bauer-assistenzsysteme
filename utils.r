extract_berlin_samples <- function(source_df) {
    df_berlin <- subset(source_df, !is.na(plz) &
        as.integer(as.character(plz)) >= 10115 &
        as.integer(as.character(plz)) <= 14199)
    return (
        df_berlin
    )
}

# util function for replacing sentinel values with NA
sentinels <- c(-9, -8, -7, -6, -5, -2)
replace_sentinels <- function(x, s = sentinels) {
  x[x %in% s] <- NA
  return (
    x
  )
}