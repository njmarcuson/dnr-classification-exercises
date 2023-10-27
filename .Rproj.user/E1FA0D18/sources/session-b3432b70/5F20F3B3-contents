mainFunction2 = function(trees, classDefinitions) {
  source('exercise2/getClassificationDefinitionsFunction.R')
  
  ids = unique(trees$unit_id)
  classes = c()
  
  for (id in ids) {
    inventoryUnit = subset(trees, trees$unit_id==id)
    unitClass = classifyInventoryUnit2(inventoryUnit, classDefinitions)
    classes = append(classes, unitClass)
  }
  
  classification = data.frame(unit_id=ids, class=classes)
  write.csv(classification, "exercise2/classification.csv", row.names=FALSE)
  
}

source('exercise2/classifyInventoryUnitFunction2.R')

trees = read.csv('trees.csv')
classDefinitions = getClassificationDefinitions()

mainFunction2(trees, classDefinitions)