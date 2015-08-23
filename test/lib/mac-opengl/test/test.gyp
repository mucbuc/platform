{
	'includes':[
		'lib/mac-opengl/def.gypi',
		'plank/def/opengl.gypi',
		'plank/def/plank.gypi',
	],#includes
	'target_defaults': {
		'target_name': 'test', 
		'type': 'executable',
		'sources': [
			'src/AppDelegate.h',
			'src/AppDelegate.mm',
			'src/main.mm',
		], #sources
		'include_dirs': [
			'plank/src/',
			'.',
			'..',
		], #include_dirs		
	}, #target_defaults
}