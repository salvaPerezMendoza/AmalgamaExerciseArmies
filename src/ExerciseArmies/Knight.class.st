Class {
	#name : 'Knight',
	#superclass : 'Unit',
	#category : 'ExerciseArmies',
	#package : 'ExerciseArmies'
}

{ #category : 'testing' }
Knight class >> isNamed: aUnitString [
	^(aUnitString = 'Knight')
]

{ #category : 'initialization' }
Knight >> initialize [ 
	score := 20.
	trainingValue := 30.
	trainingScore := 10.
]

{ #category : 'initialization' }
Knight >> transform: aGold [
	NonTransformationalUnit signal.
]
