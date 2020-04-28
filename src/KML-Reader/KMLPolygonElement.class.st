Class {
	#name : #KMLPolygonElement,
	#superclass : #KMLElement,
	#category : #'KML-Reader-Model'
}

{ #category : #'as yet unclassified' }
KMLPolygonElement class >> kmlElementName [ 
	^ 'Polygon'
]

{ #category : #visiting }
KMLPolygonElement >> acceptKMLVisitor: aKMLVisitor [ 
	^ aKMLVisitor visitPolygonElement: self 
]
