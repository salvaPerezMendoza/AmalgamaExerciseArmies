Class {
	#name : 'Pikeman',
	#superclass : 'Unit',
	#category : 'ExerciseArmies',
	#package : 'ExerciseArmies'
}

{ #category : 'testing' }
Pikeman class >> isNamed: aUnitString [
	^(aUnitString = 'Pikeman')
]

{ #category : 'initialization' }
Pikeman >> initialize [ 
	score := 5.
	trainingValue := 10.
	trainingScore := 3.
	transformationValue := 30.
]

{ #category : 'initialization' }
Pikeman >> transform: aGold [
	aGold spend: transformationValue.
	^Archer new.
]
