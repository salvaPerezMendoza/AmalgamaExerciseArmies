Class {
	#name : 'Battle',
	#superclass : 'Object',
	#instVars : [
		'p1',
		'p2',
		'winner',
		'losser',
		'tie',
		'p1Score',
		'p2Score'
	],
	#category : 'ExerciseArmies',
	#package : 'ExerciseArmies'
}

{ #category : 'as yet unclassified' }
Battle class >> fight: oneArmy against: anotherArmy [
|battle|

	battle := self new.
	battle fight: oneArmy against: anotherArmy.
	^battle
]

{ #category : 'as yet unclassified' }
Battle >> fight: oneArmy against: anotherArmy [
	
	oneArmy addBattleHistory: self.
	anotherArmy addBattleHistory: self.
	
	p1 := oneArmy.
	p2 := anotherArmy.
	p1Score := oneArmy score.
	p2Score := anotherArmy score.

	(p2Score > p1Score)
		ifTrue: [
			losser := oneArmy.
			winner := anotherArmy
		]
		ifFalse: [
			(p1Score > p2Score)
				ifTrue: [
					losser := anotherArmy.
					winner := oneArmy
				]
				ifFalse: [
					oneArmy youTied.
					anotherArmy youTied.
					tie := true.
					^ nil
				]
		].

	winner youWon.
	losser youLost.
]

{ #category : 'as yet unclassified' }
Battle >> initialize [ 
	tie := false.
]

{ #category : 'as yet unclassified' }
Battle >> winner [
	^winner 
]
