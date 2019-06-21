'use strict';

const app = angular.module("myApp", [
    'ngRoute'
]);

app.config(function ($routeProvider) {
        $routeProvider
        .when('/', {
            templateUrl: "app/modules/home/components/home.tpl.html"
        }).when('/forum', {
            templateUrl: "app/modules/forum/components/startPage.tpl.html"
        }).when('/login', {
            templateUrl: "app/modules/userForms/login/components/login.tpl.html",
            css: 'app/modules/userForms/form.css'
        }).when('/register', {
            templateUrl: "app/modules/userForms/register/components/register.tpl.html",
            css: 'app/modules/userForms/form.css'
        })
    });

