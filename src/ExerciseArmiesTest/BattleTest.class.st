Class {
	#name : 'BattleTest',
	#superclass : 'TestCase',
	#category : 'ExerciseArmiesTest',
	#package : 'ExerciseArmiesTest'
}

{ #category : 'tests' }
BattleTest >> test01ABattleWithAWinnerAndALoserAndTheLoserLosesUnits [
| byzantineArmy englishArmy winnerArmy loserArmy obtainedScore expectedScore |
	
	byzantineArmy := Army initializeBelongingTo: 'Byzantines'.
	englishArmy := Army initializeBelongingTo: 'English'.

	winnerArmy := byzantineArmy battleAgainst: englishArmy.
	loserArmy := byzantineArmy = winnerArmy
		             ifTrue: [ englishArmy ]
		             ifFalse: [ byzantineArmy ].

	obtainedScore := loserArmy score.
	expectedScore := 310.

	self assert: obtainedScore equals: expectedScore
]

{ #category : 'tests' }
BattleTest >> test02WinningArmyReceivesGold [
| chineseArmy byzantineArmy expectedGold obtainedGold |

	chineseArmy := Army initializeBelongingTo: 'Chinese'.
	byzantineArmy := Army initializeBelongingTo: 'Byzantines'.

	byzantineArmy battleAgainst: chineseArmy.

	expectedGold := Gold withValueOf: 1100.
	obtainedGold := byzantineArmy gold.

	self assert: (expectedGold compare: obtainedGold).
]

{ #category : 'tests' }
BattleTest >> test03ATiedBattleBothLoseOneUnit [
| army1 army2 expectedScore1 expectedScore2 obtainedScore1 obtainedScore2 |

	army1 := Army initializeBelongingTo: 'English'.
	army2 := Army initializeBelongingTo: 'English'.

	army1 battleAgainst: army2.
	
	expectedScore1 := 330.
	expectedScore2 := 330.
	obtainedScore1 := army1 score.
	obtainedScore2 := army2 score.
	
	self assert: expectedScore1 equals: obtainedScore1.
	self assert: expectedScore2 equals: obtainedScore2.
]
