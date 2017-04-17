require_relative '../words'

w = {
		'bubbly' => '快活的',
		'cheeky' => '厚颜无耻的',
		'scatty' => '没头脑的',
}

www = Words.new
www.words w

www.review
