Class {
	#name : 'Gold',
	#superclass : 'Object',
	#instVars : [
		'value'
	],
	#category : 'ExerciseArmies',
	#package : 'ExerciseArmies'
}

{ #category : 'as yet unclassified' }
Gold class >> withValueOf: aValue [
| gold |

	gold := self new.
	gold withValue: aValue.
	
	^gold.
]

{ #category : 'initialization' }
Gold >> compare: aGold [
	^aGold sharesValue: value.
]

{ #category : 'initialization' }
Gold >> earn: aValue [
	value := value + aValue.
]

{ #category : 'initialization' }
Gold >> sharesValue: aValue [
	^value = aValue.
]

{ #category : 'initialization' }
Gold >> spend: aValue [

	(value - aValue < 0)
		ifTrue: [ RunOutOfGold signal ].
	value := value - aValue.
]

{ #category : 'initialization' }
Gold >> withValue: aValue [
	value := aValue.
]
