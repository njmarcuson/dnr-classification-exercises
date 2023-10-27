# main function that completes exercise 1
mainFunction1 <- function() {
  source('exercise1/classifyInventoryUnitFunction1.R')
  trees = read.csv('trees.csv')
  
  ids = unique(trees$unit_id)
  classes = c()
  
  for (id in ids) {
    inventoryUnit = subset(trees, trees$unit_id==id)
    unitClass = classifyInventoryUnit1(inventoryUnit)
    classes = append(classes, unitClass)
  }
  
  classification = data.frame(unit_id=ids, class=classes)
  write.csv(classification, "exercise1/classification.csv", row.names=FALSE)
}

mainFunction1()
