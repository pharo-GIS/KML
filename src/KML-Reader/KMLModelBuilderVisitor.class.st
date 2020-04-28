Class {
	#name : #KMLModelBuilderVisitor,
	#superclass : #KMLVisitor,
	#instVars : [
		'model',
		'currentContainer',
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

{ #category : #'as yet unclassified' }
KMLModelBuilderVisitor >> useContainer: aKMLContainer during: aBlock [
	| previous |
	previous := currentContainer.
	currentContainer := aKMLContainer.
	aBlock ensure: [ 
		currentContainer := previous ]
]

{ #category : #visiting }
KMLModelBuilderVisitor >> visitCoordinatesElement: aKMLCoordinatesElement [ 
	| rawCoordinates |
	rawCoordinates := (Character space split: aKMLCoordinatesElement contentString trimBoth) reject: #isEmpty.
	currentObject coordinates: (rawCoordinates collect: [ :each| | tuple |
		tuple := $, split: each.
		tuple first asNumber @ tuple second asNumber ])
]

{ #category : #'as yet unclassified' }
KMLModelBuilderVisitor >> visitDocument: aKMLDocument [ 
	model := KMLDocument new.
	currentContainer := model.
	currentObject := model.
	^ self visitElementWithChildren: aKMLDocument 
]

{ #category : #visiting }
KMLModelBuilderVisitor >> visitFolderElement: aKMLFolderElement [ 
	| folder |
	folder := KMLFolder new.
	self 
		useContainer: folder
		during: [ self visitElementWithChildren: aKMLFolderElement ].
	currentContainer addFeature: folder.
	^ folder
]

{ #category : #visting }
KMLModelBuilderVisitor >> visitLinearRingElement: aKMLLinearRingElement [ 
	| linearRing |
	linearRing := KMLLinearRing new.
	self
		use: linearRing 
		during: [ self visitElementWithChildren: aKMLLinearRingElement ].
	currentObject addGeometry: linearRing.
	^ linearRing
]

{ #category : #visiting }
KMLModelBuilderVisitor >> visitPlacemarkElement: aKMLPlacemarkElement [ 
	| placemark |
	placemark := KMLPlacemark new.
	self
		use: placemark
		during: [ self visitElementWithChildren: aKMLPlacemarkElement ].
	currentContainer addFeature: placemark.
	^ placemark
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
