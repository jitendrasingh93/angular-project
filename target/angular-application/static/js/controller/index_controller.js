/**
 * Created by JitendraSingh on 22/02/18.
 */

(function () {
    'use strict';
    angular
        .module('app')
        .controller('IndexController', IndexController);
    IndexController.$inject = ['$scope', '$location', 'AuthenticationService', 'FlashService'];

    function IndexController($scope ,$location, AuthenticationService, FlashService) {
        var vm = this;
        vm.login = login;
        function login() {
            vm.dataLoading = true;
            AuthenticationService.Login(vm.username, vm.password, function (response) {
                if (response.success) {
                    //AuthenticationService.SetCredentials(vm.username, vm.password);
                    //$location.path('/');
                    $scope.islogin= true;
                    alert("islogin : "+$scope.islogin);
                } else {
                    FlashService.Error(response.message);
                    vm.dataLoading = false;
                }
            });
        };
    }
})();
