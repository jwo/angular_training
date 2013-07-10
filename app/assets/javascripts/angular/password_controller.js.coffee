AngulaRails.controller "PasswordController", ($scope, PasswordValidator) ->
  $scope.validatePassword = () ->
    $scope.passwordValidationMessage = PasswordValidator.validatePassword($scope.password)

  $scope.validPassword = () ->
    $scope.validatePassword()
    $scope.passwordValidationMessage == ""

  $scope.register = () ->
    if $scope.validPassword()
      alert("Register with #{$scope.email} #{$scope.password}")

