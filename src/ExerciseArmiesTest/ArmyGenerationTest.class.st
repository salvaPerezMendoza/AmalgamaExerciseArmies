Class {
	#name : 'ArmyGenerationTest',
	#superclass : 'TestCase',
	#category : 'ExerciseArmiesTest',
	#package : 'ExerciseArmiesTest'
}

{ #category : 'tests' }
ArmyGenerationTest >> test01AnArmyHas1000GoldCoinsAtCreation [
| army expectedGold obtainedGold |
	
	army := Army initializeBelongingTo: 'Chinese'.
	
	obtainedGold := army gold.
	expectedGold := Gold withValueOf: 1000.
	
	self assert: (obtainedGold compare: expectedGold).
]

{ #category : 'tests' }
ArmyGenerationTest >> test02ChineseArmyStartsWithItsScore [
| chineseArmy expectedScore obtainedScore |

	chineseArmy := Army initializeBelongingTo: 'Chinese'.
	
	expectedScore := 300.
	obtainedScore := chineseArmy score.
	
	self assert: obtainedScore equals: expectedScore.
]

{ #category : 'tests' }
ArmyGenerationTest >> test03EnglishArmyStartsWithItsScore [
| army expectedScore obtainedScore |

	army := Army initializeBelongingTo: 'English'.
	
	expectedScore := 350.
	obtainedScore := army score.
	
	self assert: obtainedScore equals: expectedScore.
]

{ #category : 'tests' }
ArmyGenerationTest >> test04ByzantineArmyStartsWithItsScore [
| army expectedScore obtainedScore |

	army := Army initializeBelongingTo: 'Byzantines'.
	
	expectedScore := 405.
	obtainedScore := army score.
	
	self assert: obtainedScore equals: expectedScore.
]

{ #category : 'tests' }
ArmyGenerationTest >> test05ArmyTrainsUnits [
| army expectedScore obtainedScore |

	army := Army initializeBelongingTo: 'Chinese'.
	
	army trainOne: 'Pikeman'.
	army trainOne: 'Archer'.
	army trainOne: 'Knight'.

	expectedScore := 320.
	obtainedScore := army score.
	
	self assert: obtainedScore equals: expectedScore.
]

{ #category : 'tests' }
ArmyGenerationTest >> test06ArmyTrainsUnitsAndLosesGold [
| army expectedGold obtainedGold |

	army := Army initializeBelongingTo: 'Chinese'.
	army trainOne: 'Pikeman'.
	army trainOne: 'Archer'.
	army trainOne: 'Knight'.

	expectedGold := Gold withValueOf: 940.
	obtainedGold := army gold.
	
	self assert: (obtainedGold compare: expectedGold).
]

{ #category : 'tests' }
ArmyGenerationTest >> test06ArmyTransformsUnits [
| army expectedScore obtainedScore |

	army := Army initializeBelongingTo: 'Chinese'.
	
	army transformOne: 'Pikeman'.
	army transformOne: 'Archer'.

	expectedScore := 315.
	obtainedScore := army score.
	
	self assert: obtainedScore equals: expectedScore.
]

{ #category : 'tests' }
ArmyGenerationTest >> test07ArmyTransformsUnitsAndLosesGold [
| army expectedGold obtainedGold  |

	army := Army initializeBelongingTo: 'Chinese'.
	
	army transformOne: 'Pikeman'.
	army transformOne: 'Archer'.

	expectedGold := Gold withValueOf: 930.
	obtainedGold := army gold.
	
	self assert: (expectedGold compare: obtainedGold).
]
