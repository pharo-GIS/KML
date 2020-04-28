Class {
	#name : #KMLRootElement,
	#superclass : #KMLElement,
	#category : #'KML-Reader-Model'
}

{ #category : #'as yet unclassified' }
KMLRootElement class >> kmlElementName [
	^ 'kml'
]

{ #category : #visiting }
KMLRootElement >> acceptKMLVisitor: aKMLVisitor [ 
	^ aKMLVisitor visitRootElement: self 
]
