'use strict';

const app = angular.module("myApp", [
    'ngRoute'
]);

app.config(function ($routeProvider) {
        $routeProvider.when('/', {
            title: "Home",
            templateUrl: "app/modules/home/components/home.tpl.html"
        })
    });

