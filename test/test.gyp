{
	'includes':[
		'lib/platform/platform.gypi',
		'plank/def/opengl.gypi',
		'plank/def/plank.gypi',
	],#inclues
	'target_defaults': {
		'target_name': 'test',
		'type': 'executable',
		'sources': [
			'src/main.mm'
		], #sources
		'include_dirs': [
			'plank/src/',
			'.',
		], #include_dirs		
	}, #target_defaults
}