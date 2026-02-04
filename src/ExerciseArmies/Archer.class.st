Class {
	#name : 'Archer',
	#superclass : 'Unit',
	#category : 'ExerciseArmies',
	#package : 'ExerciseArmies'
}

{ #category : 'testing' }
Archer class >> isNamed: aUnitString [
	^(aUnitString = 'Archer')
]

{ #category : 'initialization' }
Archer >> initialize [ 
	score := 10.
	trainingValue := 20.
	trainingScore := 7.
	transformationValue := 40.
]

{ #category : 'initialization' }
Archer >> transform: aGold [
	aGold spend: transformationValue.
	^Knight new.
]
