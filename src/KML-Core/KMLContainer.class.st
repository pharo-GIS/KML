Class {
	#name : #KMLContainer,
	#superclass : #KMLFeature,
	#instVars : [
		'features'
	],
	#category : #'KML-Core'
}

{ #category : #initialization }
KMLContainer >> addFeature: aFeature [
	features add: aFeature 
]

{ #category : #accessing }
KMLContainer >> allPlacemarks [
	^ features flatCollect: #placemarks
]

{ #category : #initialization }
KMLContainer >> initialize [ 
	super initialize.
	features := OrderedCollection new
]
