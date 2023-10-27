classifyInventoryUnit2 = function(unit, classDefinitions) {
  unit$is_conifer = unit$species %in% c("DF", "WH", "AF", "ES", "LP", "WP")
  unit$is_hardwood = unit$species %in% c("RA", "WA", "AS")
  
  unitClass = NA
  
  for (classDefinition in classDefinitions) {
    
    className = classDefinition[['class_name']]
    classRules = classDefinition[['class_rules']]
    passesCriterion = TRUE
    
    nRows = nrow(classRules)
    
    # if there are no criterion, it satisfies the class automatically
    if (nRows == 0) {
      unitClass = className
      break
    }

    for (row in 1:nRows) {
      
      n = classRules[row, 'number_of_trees']
      s = classRules[row, 'species_type']
      d = classRules[row, 'dbh']
      
      unit$is_specified_treetype = if(s=="conifer") unit$is_conifer else unit$is_hardwood
      unit$clears_diameter = unit$dbh >= d
      
      passesCriteria = sum(unit$is_specified_treetype & unit$clears_diameter) >= n
  
      if (!passesCriteria) {
        passesCriterion = FALSE
        break
      }
      
    }
    
    if (passesCriterion) {
      unitClass = className
      break
    }
    
  }
  
  if (is.na(unitClass)) {
    unitClass = "Unknown"
  }
  
  return(unitClass)
  
}
