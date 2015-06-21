{
	'includes':[
		'lib/platform/platform.gypi',
		'plank/def/cpp11.gypi',
		'plank/def/mac-targets.gypi',
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