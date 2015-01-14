app = angular.module('app', ['ui.router', 'ngRoute', 'ui.bootstrap'])




app.config( ($stateProvider, $urlRouterProvider) ->
	$urlRouterProvider.otherwise('/');

	$stateProvider
		.state('base', {
			abstract: true,
			controller: 'BaseController',
			templateUrl: 'partials/base.html',
			url: '/'
		})
		.state('base.landing', {
			url: '',
			templateUrl: 'partials/base.landing.html',
		})
)


app.controller('FooterController', ($rootScope, $scope, $state) ->
	$scope.$state = $state
	)