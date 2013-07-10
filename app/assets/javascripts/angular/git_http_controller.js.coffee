AngulaRails.controller "GitHttpController", ($scope, $http) ->
  $scope.search = () ->
    $scope.repos = []
    $scope.searching = true
    $scope.errorMessage = ""
    url = "https://api.github.com/users/#{$scope.username}/repos"
    $.ajax
      type: "GET"
      url: url
      success: (data) ->
        $scope.searching = false
        $scope.repos = data
        if $scope.repos.length == 0
          $scope.errorMessage = "No Repos"
        $scope.$apply()
      error: (error) ->
        $scope.searching = false
        if error.status == 404
          $scope.errorMessage = "User not found"
        $scope.$apply()
