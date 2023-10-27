# Helper function to get the classifications specified in the exercise
#
# Within each class definition is the data-frame "class_rules"
# Each row within "class_rules" specifies a single classification rule
# All rules must be satisfied for a unit to be classified as a certain class
getClassificationDefinitions = function() {
  
  classA = list(
    'class_name'='A',
    'class_rules'=data.frame(
      'number_of_trees'=c(10, 20),
      'species_type'=c('conifer', 'conifer'),
      'dbh'=c(20, 12)
    )
  )
  
  classB = list(
    'class_name'='B',
    'class_rules'=data.frame(
      'number_of_trees'=c(20),
      'species_type'=c('conifer'),
      'dbh'=c(12)
    )
  )
  
  classC = list(
    'class_name'='C',
    'class_rules'=data.frame(
      'number_of_trees'=c(10),
      'species_type'=c('hardwood'),
      'dbh'=c(0)
    )
  )
  
  
  classD = list(
    'class_name'='D',
    'class_rules'=data.frame()
  )
  
  
  # Order of classes in this list determines preference,
  # with classA being most preferred and classD being least
  # 
  # You may return an empty list for each unit to be unknown
  classes = list(classA, classB, classC, classD)
  return(classes)
  
}