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
		.state('base.about', {
			url: 'about',
			templateUrl: 'partials/base.about.html',
		})
		.state('base.about.directorate', {
			url: '/directorate',
			templateUrl: 'partials/base.about.directorate.html',
		})
		.state('base.investments', {
			url: 'investments',
			templateUrl: 'partials/base.investments.html',
		})
)


app.controller('FooterController', ($rootScope, $scope, $state) ->
	$scope.$state = $state
	)