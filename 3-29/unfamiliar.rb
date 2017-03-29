require_relative 'words'

a = [
		'Vietnam',
		'Cambodia',
		'film',
		'coconut palm',
		'tropical',
		'palm tree',
		'pole',
		'very good of',
		'make money from',
		'vegetation',
		'put in',
		'monsoon',
		'conspiracy',
		'bit',
		'snapshot',
		'Pacific Ocean',
		'Ecuador',
		'high plain',
		'plateau',
		'coastal',
		'recover',
		'form',
		'volcano',
		'posts',
		'retarded',
		'come over',
		'auditorium',
		'court',
		'overall',
		'collar',
		'outfit',
		'insurance',
		'teller',
		'accessory',
		'grocery',
		'welfare'
]

a.each do |w|
	print w, "\n"
	print get_today.refer w, "\n"
end
