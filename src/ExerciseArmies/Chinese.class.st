Class {
	#name : 'Chinese',
	#superclass : 'Civilization',
	#category : 'ExerciseArmies',
	#package : 'ExerciseArmies'
}

{ #category : 'testing' }
Chinese class >> isNamed: aCivilizationString [
	^(aCivilizationString = 'Chinese')
]

{ #category : 'adding' }
Chinese >> createInitialUnits [
	^ OrderedCollection new
		addAll: ((1 to: 2) collect: [:i | Pikeman new]);
		addAll: ((1 to: 25) collect: [:i | Archer new]);
		addAll: ((1 to: 2) collect: [:i | Knight new]);
		yourself
]
