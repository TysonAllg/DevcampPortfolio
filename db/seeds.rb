10.times do |blog|
      Blog.create!(
        title: "My Blog Post #{blog}"  
        body:  "Random crap.")
end

puts "10 blog posts created"

5.times do |skill|
    Skill.create!(
        title: "rails #{skill}"
        percent_used:15
        )
end

puts "5 skills created"

9.times do |portfolio_item|
    Portfolio.create!(
       
      title: "Portfolio title #{portfolio_item}",
      subtitle: "My Service",
      body: "dit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut",
      main_image: "http://via.placeholder.com/650x650",
      thumb_image: "http://via.placeholder.com/350x350",
        
        )
puts "9 portfolio items created"
end