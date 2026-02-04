Class {
	#name : 'Army',
	#superclass : 'Object',
	#instVars : [
		'units',
		'gold',
		'civilization',
		'score',
		'battleHistory'
	],
	#category : 'ExerciseArmies',
	#package : 'ExerciseArmies'
}

{ #category : 'initialization' }
Army class >> initializeBelongingTo: aCivilizationString [
| army |
	
	army := self new.
	army setCivilization: (Civilization forCivilizationNamed: aCivilizationString).
	army createArmy.
	
	^army
]

{ #category : 'initialization' }
Army >> addBattleHistory: aBattle [
	battleHistory add: aBattle .
]

{ #category : 'initialization' }
Army >> battleAgainst: anotherArmy [
| battle |

	battle := Battle fight: self against: anotherArmy. 
	
	^battle winner.

]

{ #category : 'initialization' }
Army >> calculateScore [
	^units sum: [:u | u score]
]

{ #category : 'initialization' }
Army >> createArmy [
	units := civilization createInitialUnits.
]

{ #category : 'initialization' }
Army >> gold [
	^gold
]

{ #category : 'initialization' }
Army >> initialize [ 
	units := OrderedCollection new.
	gold := Gold withValueOf: 1000.
	score := 0.
	battleHistory := OrderedCollection new.
]

{ #category : 'initialization' }
Army >> score [
	^self calculateScore
]

{ #category : 'initialization' }
Army >> setCivilization: aCivilization [
	civilization := aCivilization.
]

{ #category : 'initialization' }
Army >> trainOne: aUnitString [
| newUnit unitToTrain |

	newUnit := Unit forUnitNamed: aUnitString.

	unitToTrain := units
		detect: [:u | u class = newUnit class]
		ifNone: [ ^ nil ].

	unitToTrain train: gold.
	^ unitToTrain
]

{ #category : 'initialization' }
Army >> transformOne: aUnitString [
| newUnit unitToTransform transformedUnit |

	newUnit := Unit forUnitNamed: aUnitString.

	unitToTransform := units
		detect: [:u | u class = newUnit class]
		ifNone: [ ^ nil ].

	transformedUnit := unitToTransform transform: gold.
	units remove: unitToTransform.
	units add: transformedUnit.

	^ transformedUnit
]

{ #category : 'initialization' }
Army >> youLost [
	| top2 |
	top2 := (units asSortedCollection: [:a :b | a score > b score]) first: 2.
	top2 do: [:u | units remove: u].
]

{ #category : 'initialization' }
Army >> youTied [
	| max |
	units isEmpty ifTrue: [ RunOutOfUnits ].
	max := (units asSortedCollection: [:a :b | a score > b score]) first.
	units remove: max.
]

{ #category : 'initialization' }
Army >> youWon [
	gold earn: 100.
]
