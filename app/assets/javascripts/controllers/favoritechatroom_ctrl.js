(function() {
  'use strict';

  angular.module("app").controller("favoritechatroomCtrl", function($scope, $http, $timeout) {
    $scope.setup = function() {
      $http.get("/api/v1/chatrooms.json").then(function(response) {
        $scope.chatrooms = response.data;
      });
    }

    $scope.showfavorites = function(){
      console.log("success");

    }

    $scope.activeView = "newChatroom";

    $scope.favorite = function(chatroom) {
      chatroom.favorite = chatroom.favorite ? 0 : 1
      // prefers to pass numbers/strings in the params instead of booleans
      // 0 is falsey in JS - so set favorite to 0 if 1, 1 if 0
      // Then Rails can handle the params appropriately
      var chatroomParams = {
        chatroom_id: chatroom.id,
        favorite: chatroom.favorite
      }
      $http.post('/api/v1/favorites.json', chatroomParams).then(function(response) {
        chatroom.favoriteChatroom = response.data.success;
      });
      $timeout(function() {
        chatroom.favoriteChatroom = null;
      }, 1500)
    }
  });
})();
