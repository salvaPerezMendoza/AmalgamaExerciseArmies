Class {
	#name : 'Civilization',
	#superclass : 'Object',
	#category : 'ExerciseArmies',
	#package : 'ExerciseArmies'
}

{ #category : 'as yet unclassified' }
Civilization class >> forCivilizationNamed: aCivilizationString [
	^(self subclasses detect: [:aSubclass | aSubclass isNamed: aCivilizationString]
		ifNone: [ NonExistentCivilization signal ]) new
]
