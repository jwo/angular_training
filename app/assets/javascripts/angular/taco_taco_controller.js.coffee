AngulaRails.controller "TacoTacoController", ($scope) ->
  $scope.tacos = []
  $scope.fillings = ["Beef", "Chicken", "Fish", "Carnitas"]
  $scope.extras = [ { name: "Sour Cream" }, { name: "Guac" }, { name: "Salsa" }]
  $scope.cheeses = ["No Cheese", "Normal Cheese", "Mucho Queso", "Monterrey Jack"]

  $scope.clear = () ->
    $scope.taco = {}
    for extra in $scope.extras
      extra.checked = false

  $scope.getExtras = () ->
    extras = []
    for extra in $scope.extras
      if extra.checked == true
        extras.push(extra.name)
    extras
    
  $scope.addTaco = () ->
    $scope.taco.extras = $scope.getExtras()
    $scope.tacos.push($scope.taco)

    $scope.clear()
