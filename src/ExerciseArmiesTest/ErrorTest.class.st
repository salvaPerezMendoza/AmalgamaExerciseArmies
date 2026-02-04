Class {
	#name : 'ErrorTest',
	#superclass : 'TestCase',
	#category : 'ExerciseArmiesTest',
	#package : 'ExerciseArmiesTest'
}

{ #category : 'tests' }
ErrorTest >> test01TrainNonExistentUnitRaisesError [
| army |

	army := Army initializeBelongingTo: 'Chinese'.

	self should: [ army trainOne: 'Samurai' ] raise: NonExistentUnit.
]

{ #category : 'tests' }
ErrorTest >> test02BelongToNonExistentCivilizationRaisesError [
| army |

	self should: [ army := Army initializeBelongingTo: 'Mongols'. ] raise: NonExistentCivilization .
]

{ #category : 'tests' }
ErrorTest >> test03NonTransformationalUnitRaisesError [
| army |

	army := Army initializeBelongingTo: 'Chinese'.

	self should: [ army transformOne: 'Knight' ] raise: NonTransformationalUnit.
]
