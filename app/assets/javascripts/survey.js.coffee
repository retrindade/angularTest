app = angular.module("Survey", ["ngResource"])

app.factory "Auditor", ["$resource", ($resource) ->
	$resource("/auditors/:id.json", {id: "@id"}, {update: {method: "PUT"}})
]	

@SurveyCtrl = ["$scope", "Auditor" , ($scope, Auditor) ->
 	$scope.supliers = Auditor.query()
 	]

app.factory "Question", ["$resource", ($resource) ->
	$resource("/questions.json",  {}, {get: {method: "GET"} })
]	

app.factory "Answer", ["$resource", ($resource) ->
	$resource("/answers.json",  {}, {get: {method: "GET"} })
]	

@QuestionCtrl = ["$scope", "Question", "Answer" , ($scope, Question, Answer) ->
 	$scope.questions = Question.query()
 	$scope.answers = Answer.query()
 ]
 
