(function() {
  'use strict';

  angular.module('app').controller('bookratingsCtrl', function($scope, $http) {
    $scope.setup = function(id){
      $http.get("/api/v1/ratings/"+id+".json").then(function(response) {
        $scope.book = response.data;
        fillStars();
      })
    }


    $scope.favoriteBook = function(book, star) {
      console.log(star)
      var favoriteParams = {
        book_id: book.id,
        rate: star.rating
      }
      $http.post("/api/v1/ratings/"+book.id+".json", favoriteParams).success(function(response) {
        book.user_rating = response.user_rating
      })
    }

    function fillStars() {
      $scope.book.stars.forEach(function(star) {
          star.filled = $scope.book.user_rating >= star.rating
      })
    }

    $scope.emptyStar = function(book, star) {
      book.stars.forEach(function(s) {
        if (s.rating > book.user_rating) {
          s.filled = false;
        }
      })
    }

    $scope.fillStar = function(book, star) {
      book.stars.forEach(function(s) {
        if (s.rating <= star.rating) {
          s.filled = true;
        }
      })
    }
  });
})();
