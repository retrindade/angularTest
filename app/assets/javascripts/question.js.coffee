app = angular.module("Question", ["ngResource"])

app.factory "Question", ["$resource", ($resource) ->
	$resource("/questions.json",  {update: {method: "PUT"}})
]	

@QuestionCtrl = ["$scope", "Question" , ($scope, Question) ->
 	$scope.supliers = Question.query()
 	]