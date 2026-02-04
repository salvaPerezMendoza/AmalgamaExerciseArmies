Class {
	#name : 'English',
	#superclass : 'Civilization',
	#category : 'ExerciseArmies',
	#package : 'ExerciseArmies'
}

{ #category : 'testing' }
English class >> isNamed: aCivilizationString [
	^(aCivilizationString = 'English')
]

{ #category : 'adding' }
English >> createInitialUnits [
	^ OrderedCollection new
		addAll: ((1 to: 10) collect: [:i | Pikeman new]);
		addAll: ((1 to: 10) collect: [:i | Archer new]);
		addAll: ((1 to: 10) collect: [:i | Knight new]);
		yourself
]
