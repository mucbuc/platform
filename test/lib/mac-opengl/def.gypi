{
	'includes':[
		'../context/def.gypi',
		'../drop/def.gypi',
		'../objectify/def.gypi',
		'../prima/def.gypi',
		'../sense/def.gypi',
		'../numbro/def.gypi',
		'../spawn/spawn.gypi',
		'../static/def.gypi',
		'../traverse/traverse.gypi'
	],
	'target_defaults': {
		'sources': [
			'src/background.h',
			'src/background.hxx',
			'src/glUtil.h',
			'src/OpenGLView.h',
			'src/OpenGLView.mm',
			'src/TrackView.h',
			'src/TrackView.mm',
			'src/root_context.h',
			'src/root_context.cpp',
			'src/window.h',
			'src/window.mm',
		]
	}
}