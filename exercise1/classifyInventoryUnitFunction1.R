# Classifies a data-frame of trees in a given inventory unit
# into one of class A, B, C, or D
classifyInventoryUnit1 = function(unit) {
  
  unit$is_conifer = unit$species %in% c("DF", "WH", "AF", "ES", "LP", "WP")
  unit$is_hardwood = unit$species %in% c("RA", "WA", "AS")
  unit$dbh12 = unit$dbh >= 12
  unit$dbh20 = unit$dbh >= 20

  if ( sum(unit$dbh12 & unit$is_conifer) >= 20
       & sum(unit$dbh20 & unit$is_conifer) >= 10 ) {
    class = "A"
  } else if ( sum(unit$dbh12 & unit$is_conifer) >= 20 ) {
    class = "B"
  } else if ( sum(unit$is_hardwood) >= 10 ) {
    class = "C"
  } else {
    class = "D"
  }

  return(class)
  
}