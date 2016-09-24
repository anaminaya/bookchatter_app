(function() {
  'use strict';

  var myApp = angular.module("app", []);

  myApp.filter('returnFavorites', function () {
  return function (chats, filterOn) {
  	if(!filterOn){
  		return chats;
  	}
   	else{
   		var favorites = chats.filter(function(chat){
      	return chat.favorite;
    	});
      return favorites;
   }
  };
});

function favoritechatroomCtrl($scope) {
	$scope.filterOn = true;
  $scope.chats =
    [
    {name: "Chat1", favorite: false},
    {name: "Chat2", favorite: true},
    {name: "Chat3", favorite: false},
    {name: "Chat4", favorite: false},
    {name: "Chat5", favorite: false},
    {name: "Chat6", favorite: false},
  ];


}
})();
