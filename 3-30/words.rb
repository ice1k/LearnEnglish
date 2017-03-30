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
		'fresh water' => '淡水',
		'promote' => '宣传，促进，提高',
		'impoverished' => '贫穷的（书面）',
		'numerous' => '众多的（书面）',
		'Box office' => '票房，售票处',
})

def_getter _3_30
_3_30.listen_write
