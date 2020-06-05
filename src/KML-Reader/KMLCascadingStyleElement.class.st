Class {
	#name : #KMLCascadingStyleElement,
	#superclass : #KMLElement,
	#category : #'KML-Reader-Model'
}

{ #category : #'as yet unclassified' }
KMLCascadingStyleElement class >> kmlElementName [ 

	^ 'gx:CascadingStyle'
]

{ #category : #visiting }
KMLCascadingStyleElement >> acceptKMLVisitor: aKMLVisitor [ 
	^ aKMLVisitor visitCascadingStyleElement: self 
]
