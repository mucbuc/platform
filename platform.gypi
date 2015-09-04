{
	'includes':[
		'../context/def.gypi',
		'../drop/def.gypi',
		'../http-client/http-client.gypi',
		'../numbro/def.gypi',
		'../objectify/def.gypi',
		'../prima/def.gypi',
		'../sense/def.gypi',
		'../spawn/spawn.gypi',
		'../static/def.gypi',
		'../traverse/traverse.gypi'
	],
	'target_defaults': {
		'sources': [
			'interface.h',
			'interface.mm',
			'src/mac/glUtil.h',
			'src/mac/OpenGLView.h',
			'src/mac/OpenGLView.mm',
			'src/mac/TrackView.h',
			'src/mac/TrackView.mm',
			'src/mac/root_context.h',
			'src/mac/root_context.cpp',
			'src/mac/window.h',
			'src/mac/window.mm',
		],
	}
}



