<<<<<<< HEAD
10.times do |blog|
      Blog.create!(
        title: "My Blog Post #{blog}",
        body: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"
  )
=======
Blog.create!(
    title: “My Blog Post #{blog}”,

end

10 times do |blog|
    puts blog
>>>>>>> 88e3ef67b7eeebaf6f33f6dc15b327ba09cf0d52
end

Blog.create!(
    title: “My Blog Post #{blog}”,
    body: “Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, 
    eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia
    voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque
    porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora
    incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam 
    corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate 
    velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?”
)
end

5.times do |skill|
<<<<<<< HEAD
    Skill.create!(
        title: "rails #{skill}",
        percent_utilized: 15
        )
=======
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
  )
>>>>>>> 88e3ef67b7eeebaf6f33f6dc15b327ba09cf0d52
end

puts "10 blog posts created" 
puts "5 skills created"

9.times do |portfolio_item|
  Portfolio.create!(
    title:"Portfolio title: #{portfolio_item}”,
    subtitle:Content,
    body:Body,
    main_image:http://via.placeholder.com/650x650, 
    thumb_image:http://via.placeholder.com/350x350
    )
end

