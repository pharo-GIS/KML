Class {
	#name : #BaselineOfKML,
	#superclass : #BaselineOf,
	#category : #BaselineOfKML
}

{ #category : #baselines }
BaselineOfKML >> baseline: spec [
	<baseline>

	spec for: #'common' do: [
		self xmlParser: spec.
		self pharoOGC: spec.
		spec 
			package: #'KML-Core' with: [
				spec requires: #('OGC' ). ];
			package: #'KML-Reader' with: [
				spec requires: #('KML-Core' 'XMLParser' ). ].
		spec 
			group: 'Core' with: #('KML-Core' );
			group: 'default' with: #('KML-Core' 'KML-Reader'). ].

]

{ #category : #'as yet unclassified' }
BaselineOfKML >> pharoOGC: spec [

	spec
		baseline: 'OGC' with: [ 
			spec 
				repository: 'github://Pharo-GIS/OGC-Pharo'].
			
	
]

{ #category : #'as yet unclassified' }
BaselineOfKML >> xmlParser: spec [

	spec
		baseline: 'XMLParser' with: [ 
			spec 
				repository: 'github://pharo-contributions/XML-XMLParser:3.5.0/src'].
			
	
]
