3.times do |topic|
	Topic.create!(title: "Topic#{topic}")
end

puts "3 topics are created"

10.times do |blog|
	Blog.create!(
		title: "My blog post#{blog}",
		body: "Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. 
		Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. 
		Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.
		Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.
		Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. 
		Morbi leo risus, porta ac consectetur ac, vestibulum at eros.",
		topic_id: Topic.last.id)
end

puts "10 blogs are created"

5.times do |skill|
	Skill.create!(
		title: "Rails#{skill}",
		percent_utilized: 10 * skill)
end

puts "5 skills created"

8.times do |portfolio_item|
	Portfolio.create!(
		title: "Portfolio_item#{portfolio_item}",
		subtitle: "Ruby on Rails",
		body: "welcome to portfolio#{portfolio_item}",
		main_image: "https://via.placeholder.com/600x400",
		thumb_image: "https://via.placeholder.com/350x150")
end

1.times do |portfolio_item|
	Portfolio.create!(
		title: "Portfolio_item#{portfolio_item}",
		subtitle: "Angular",
		body: "welcome to portfolio#{portfolio_item}",
		main_image: "https://via.placeholder.com/600x400",
		thumb_image: "https://via.placeholder.com/350x150")
end

puts "9 portfolios created"

3.times do |technology|
	Portfolio.last.technologies.create!(
		name: "Technology#{technology}",
		portfolio_id: Portfolio.last.id)
end

puts "3 technologies created"