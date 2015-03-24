['AWW', 'PICS', 'FUNNY'].each { |name| Subreddit.create(name: name) }

Subreddit.all.each do |subreddit|
  5.times do
    Post.create(title: 'Foo', body: 'bar', subreddit: subreddit)
  end
end