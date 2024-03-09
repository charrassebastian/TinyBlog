"
Please describe the package using the class comment of the included manifest class. The manifest class also includes other additional metadata for the package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestTinyBlogComponents,
	#superclass : #PackageManifest,
	#category : #'TinyBlog-Components-Manifest'
}

{ #category : #'code-critics' }
ManifestTinyBlogComponents class >> ruleUtilityMethodsRuleV1FalsePositive [
	^ #(#(#(#RGPackageDefinition #(#'TinyBlog-Components')) #'2024-03-08T15:30:48.685-03:00') )
]
