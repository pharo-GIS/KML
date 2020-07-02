Class {
	#name : #KMLModelBuilderVisitor,
	#superclass : #KMLVisitor,
	#instVars : [
		'model',
		'currentObject'
	],
	#category : #'KML-Reader'
}

{ #category : #accessing }
KMLModelBuilderVisitor >> model [
	^ model 
]

{ #category : #'as yet unclassified' }
KMLModelBuilderVisitor >> use: aKMLObject during: aBlock [
	| previous |
	previous := currentObject.
	currentObject := aKMLObject.
	aBlock ensure: [ 
		currentObject := previous ]
]

{ #category : #visiting }
KMLModelBuilderVisitor >> visitCoordinatesElement: aKMLCoordinatesElement [ 
	| rawCoordinates |
	rawCoordinates := ([:c| c isSeparator] split: aKMLCoordinatesElement contentString trimBoth) reject: #isEmpty.
	"if the collection has only one coordinate it is a point and we feed it directly"
	(rawCoordinates size = 1)
		ifTrue: [ | coords |
			coords :=  $, split: rawCoordinates first.
			currentObject 
				x: coords first asNumber;
				y: coords second asNumber.
			(coords size = 3) ifTrue: [ 
				currentObject z: coords third asNumber ] ]
		ifFalse: [  
			currentObject points:  (rawCoordinates collect: [ :each| | tuple point |
				tuple := $, split: each.
				point := OGCPoint 
					x: tuple first asNumber 
					y: tuple second asNumber.
				(tuple size = 3) ifTrue: [ 
					point z: tuple third asNumber ] ]) ]
	
]

{ #category : #visiting }
KMLModelBuilderVisitor >> visitDescriptionElement: aKMLDescriptionElement [ 
	
	currentObject description: aKMLDescriptionElement contentString
]

{ #category : #'as yet unclassified' }
KMLModelBuilderVisitor >> visitDocument: aKMLDocument [ 
	model := KMLDocument new.
	currentObject := model.
	^ self visitElementWithChildren: aKMLDocument 
]

{ #category : #visiting }
KMLModelBuilderVisitor >> visitFolderElement: aKMLFolderElement [ 
	| folder |
	folder := KMLFolder new.
	self 
		use: folder
		during: [ self visitElementWithChildren: aKMLFolderElement ].
	currentObject addFeature: folder.
	^ folder
]

{ #category : #visiting }
KMLModelBuilderVisitor >> visitInnerBoundayIsElement: aKMLInnerBoundaryIsElement [
	| holder |
	holder := KMLGeometryHolder new .
	self
		use: holder
		during: [ self visitElementWithChildren: aKMLInnerBoundaryIsElement ].
	currentObject addInnerBoundary: holder geometry.
	^ holder
]

{ #category : #visting }
KMLModelBuilderVisitor >> visitLinearRingElement: aKMLLinearRingElement [ 
	| linearRing |
	linearRing := OGCLinearRing new.
	self
		use: linearRing 
		during: [ self visitElementWithChildren: aKMLLinearRingElement ].
	currentObject addGeometry: linearRing.
	^ linearRing
]

{ #category : #visiting }
KMLModelBuilderVisitor >> visitMultiGeometryElement: aKMLMultiGeometryElement [ 
	^ self visitElementWithChildren: aKMLMultiGeometryElement 
]

{ #category : #visiting }
KMLModelBuilderVisitor >> visitNameElement: aKMLNameElement [ 
	
	currentObject name: aKMLNameElement contentString
]

{ #category : #visiting }
KMLModelBuilderVisitor >> visitOuterBoundaryIs: aKMLOuterBoundaryIsElement [ 
	| holder |
	holder := KMLGeometryHolder new .
	self
		use: holder
		during: [ self visitElementWithChildren: aKMLOuterBoundaryIsElement ].
	currentObject outerBoundary: holder geometry.
	^ holder
]

{ #category : #visiting }
KMLModelBuilderVisitor >> visitParameterElement: aKMLParameterElement [ 
	"currentObject 
		propertyAt: aKMLParameterElement name
		put: aKMLParameterElement contentString "
	currentObject 
		perform: aKMLParameterElement name asSymbol asMutator
		with: aKMLParameterElement contentString
]

{ #category : #visiting }
KMLModelBuilderVisitor >> visitPlacemarkElement: aKMLPlacemarkElement [ 
	| placemark |
	placemark := KMLPlacemark new.
	self
		use: placemark
		during: [ self visitElementWithChildren: aKMLPlacemarkElement ].
	currentObject addFeature: placemark.
	^ placemark
]

{ #category : #visiting }
KMLModelBuilderVisitor >> visitPointElement: aKMLPointElement [ 
	| point |
	point := OGCPoint new.
	self
		use: point
		during: [ self visitElementWithChildren: aKMLPointElement ].
	currentObject addGeometry: point.
	^ point
]

{ #category : #visiting }
KMLModelBuilderVisitor >> visitPolygonElement: aKMLPolygonElement [ 
	| polygon |
	polygon := KMLPolygon new .
	self
		use: polygon
		during: [ self visitElementWithChildren: aKMLPolygonElement ].
	currentObject addGeometry: polygon
]
