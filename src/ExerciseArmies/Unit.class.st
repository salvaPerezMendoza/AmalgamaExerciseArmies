Class {
	#name : 'Unit',
	#superclass : 'Object',
	#instVars : [
		'score',
		'trainingValue',
		'transformationValue',
		'trainingScore'
	],
	#category : 'ExerciseArmies',
	#package : 'ExerciseArmies'
}

{ #category : 'as yet unclassified' }
Unit class >> forUnitNamed: aUnitString [
	^(self subclasses detect: [:aSubclass | aSubclass isNamed: aUnitString]
		ifNone: [ NonExistentUnit signal ]) new
]

{ #category : 'initialization' }
Unit >> score [
	^score
]

{ #category : 'initialization' }
Unit >> train: aGold [
	aGold spend: trainingValue.
	score := score + trainingScore.
	
]
