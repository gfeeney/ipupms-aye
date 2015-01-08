age.group <- function(tbl, agerange) {
  # Arguments: table (syage by var), agerange (e.g., 45:49)
  #     value: vector of var values for age group
  apply(tbl[as.character(agerange), ], 2, FUN="sum")
}

