Class {
	#name : #KMLIgnoredElement,
	#superclass : #KMLElement,
	#category : #'KML-Reader-Model'
}

{ #category : #testing }
KMLIgnoredElement class >> ignoredNames [
	^ #( PolyStyle BalloonStyle StyleMap Pair key styleUrl tessellate )
]

{ #category : #testing }
KMLIgnoredElement class >> matchesElementName: aString [
	^ self ignoredNames includes: aString
]

{ #category : #visiting }
KMLIgnoredElement >> acceptKMLVisitor: aKMLVisitor [ 
	^ aKMLVisitor visitIgnoredElement: self 
]
