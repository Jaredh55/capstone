json.array!@posts.each do |post|
  json.post_id post.id
  json.title post.title
  json.content post.content
  json.latitude post.latitude
  json.longitude post.longitude
  json.visit post.visit
  json.user post.user
  json.city post.visit.city
  json.country post.city.country
  json.votes post.votes
  json.votecount post.votes.count
end

