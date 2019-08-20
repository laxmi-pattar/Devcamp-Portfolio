10.times do |blog|
	Blog.create!(
		title: "My blog post#{blog}",
		body: "welcome to the blog#{blog}")
end

	puts "10 blogs are created"

	5.times do |skill|
		Skill.create!(
			title: "Rails#{skill}",
			percent_utilized: 10 * skill)
	end

	puts "5 skills created"

	9.times do |portfolio_item|
		Portfolio.create!(
			title: "Portfolio_item#{portfolio_item}",
			subtitle: "subtitle#{portfolio_item}",
			body: "welcome to portfolio#{portfolio_item}",
			main_image: "https://via.placeholder.com/600x400",
			thumb_image: "https://via.placeholder.com/350x150")
	end

	puts "9 portfolioss created"