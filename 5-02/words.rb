require_relative '../words'

take_it_boy = {
		'strategy' => '战略',
		'strategic' => '战略的',
		'methodology' => '方法论',
		'methodological' => '方法论的',
		'allergic' => '过敏的',
		'allergy' => '过敏',
		'biography' => '自传',
		'biographical' => '自传体的',
		'lecture' => '讲座',
		'democracy' => '皿煮',
		'democratic' => '皿煮的',
		'liberty' => '自由',
		'adjustment' => '适应',
		'imply' => '暗示,暗含',
		'implication' => '含义',
		'incident' => '小事情,小插曲',
		'compliment' => '奉承',
		'impersonal' => '没有人情味的',
		'overwhelm' => '压制',
		'understatement' => '低估',
		'dormitory' => '寝室',
		'introductory' => '引入性的',
		'analogy' => '类比',
		'reproduction' => '繁殖',
		'meme' => '模仿/复制',
		'longevity' => '长寿',
		'sewer' => '下水管道',
		'toss' => '扔，抛',
		'scold' => '骂',
		'fickle' => '浮躁的，变化无常的',
		'rapidity' => '速度',
		'imprint' => '印记，深刻影响',
		'reunion' => '团聚，聚会',
}

_5_2 = Words.new
_5_2.words take_it_boy
# _5_2.listen_write

first = {
}

%w(
strategic
allergic
biographical
lecture
democracy
liberty
adjustment
implication
compliment
overwhelm
dormitory
).map! do |w|
	first[w] = _5_2.map[w]
end

a = Words.new
a.words first
# a.listen_write
