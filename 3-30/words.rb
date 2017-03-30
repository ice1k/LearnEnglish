require_relative '../words'

_3_30 = Words.new
# noinspection RubyStringKeysInHashInspection
_3_30.words ({
		'intensive' => '密集的，加强的',
		'aggressive' => '具有侵略性的',
		'controversial' => '具有争议的',
		'empathy' => '感同身受，移情',
		'systems-thinking' => '系统性思维',
		'flu' => '流感',
		'crisis' => '危机（单数）',
		'crises' => '危机（复数）',
		'' => '',
})

def_getter _3_30
_3_30.listen_write
