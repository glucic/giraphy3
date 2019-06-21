'use strict';

const app = angular.module("myApp", [
    'ngRoute'
]);

app.config(function ($routeProvider) {
        $routeProvider.when('/', {
            templateUrl: "app/modules/home/components/home.tpl.html"
        }).when('/forum', {
            templateUrl: "app/modules/forum/components/startPage.tpl.html"
        })
    });

