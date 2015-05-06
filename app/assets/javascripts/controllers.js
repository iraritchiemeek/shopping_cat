var app = angular.module('catApp', []);

  app.config(function($httpProvider) {
      //Enable cross domain calls
      $httpProvider.defaults.useXDomain = true;
      //Remove the header used to identify ajax call  that would prevent CORS from working
      delete $httpProvider.defaults.headers.common['X-Requested-With'];
  });

  app.controller('catCtrl', ['$scope', '$http', function($scope, $http){
    $scope.scores = [];

    var config =
    {
      method: 'GET',
      url: '/api/products',
      dataType: 'jsonp',
      headers:
      {
        'Content-Type': 'application/json',
        'Accept': 'application/json'
      }
    }

    function loadCats()
    {
      $http(config).
      success(function(data){
        console.log(data);
        $scope.cats = data;
      });
    }

    loadCats();
  }])
