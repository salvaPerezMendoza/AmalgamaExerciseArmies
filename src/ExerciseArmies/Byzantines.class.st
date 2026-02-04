Class {
	#name : 'Byzantines',
	#superclass : 'Civilization',
	#category : 'ExerciseArmies',
	#package : 'ExerciseArmies'
}

{ #category : 'testing' }
Byzantines class >> isNamed: aCivilizationString [
	^(aCivilizationString = 'Byzantines')
]

{ #category : 'adding' }
Byzantines >> createInitialUnits [
	^ OrderedCollection new
		addAll: ((1 to: 5) collect: [:i | Pikeman new]);
		addAll: ((1 to: 8) collect: [:i | Archer new]);
		addAll: ((1 to: 15) collect: [:i | Knight new]);
		yourself
]
