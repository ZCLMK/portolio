3.times do |topic|
  Topic.create!(
    title:"Topic #{topic}"
  )
end

10.times do |blog|
  Blog.create!(
    title:"My Blog Post #{blog}",
    body: "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti
     atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident,
     similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.
     Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi
     optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est,
      omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut
    rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.
     Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur
      perferendis doloribus asperiores repellat.",
      topic_id: Topic.last.id
    )
end

5.times do |skill|
  Skill.create!(
    title: "Rails#{skill}",
    level: "15%"
    )
end

8.times do |showcase_items|
  Showcase.create!(
    title:"Portfolio title #{showcase_items}",
    subtitle: "Ruby on Rails",
    body:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    main_image:"http://via.placeholder.com/600x400",
    thumb_image:"http://via.placeholder.com/350x200"
    )
end

1.times do |showcase_items|
  Showcase.create!(
    title:"Portfolio title #{showcase_items}",
    subtitle:"React",
    body:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
    labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi
     ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum
     dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia
     deserunt mollit anim id est laborum.",
    main_image:"http://via.placeholder.com/600x400",
    thumb_image:"http://via.placeholder.com/350x200"
    )
  end

  3.times do |techno|
    Showcase.last.technologies.create!(  #<= this syntaxe takes care of indexing the foreign key for us
      name: "Technology #{techno}"
    )
  end
  puts "3 technologies created"
