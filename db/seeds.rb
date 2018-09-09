User.create!([
  {email: "test", password: "password", password_confirmation: "password", bio: "this is my bio", user_image_file_name: nil, user_image_content_type: nil, user_image_file_size: nil, user_image_updated_at: nil},
  {email: "JoeCool", password: "password", password_confirmation: "password", bio: "Hi I'm Joe!!!", user_image_file_name: "pic12.jpg", user_image_content_type: "image/jpeg", user_image_file_size: 5534, user_image_updated_at: "2018-07-15 21:46:46"},
  {email: "JasonBourne", password: "password", password_confirmation: "password", bio: "secret agent", user_image_file_name: "pic09.jpg", user_image_content_type: "image/jpeg", user_image_file_size: 5929, user_image_updated_at: "2018-07-15 21:48:29"},
  {email: "JimmyJohns", password: "password", password_confirmation: "password", bio: "I make sandwiches", user_image_file_name: "pic01.jpg", user_image_content_type: "image/jpeg", user_image_file_size: 6324, user_image_updated_at: "2018-07-15 21:51:11"}
])
Country.create!([
  {name: "Peru"},
  {name: "Brazil"},
  {name: "Germany"},
  {name: "Australia"},
  {name: "United States"},
  {name: "Canada"},
  {name: "Costa Rica"}
])
City.create!([
  {name: "Chicago", country_id: 1},
  {name: "Cusco", country_id: 2},
  {name: "New York City", country_id: 1},
  {name: "Hamburg", country_id: 4},
  {name: "Berlin", country_id: 4},
  {name: "Sydney", country_id: 5},
  {name: "Rio De Janeiro", country_id: 3},
  {name: "Quebec", country_id: 6},
  {name: "San Jose", country_id: 7},
  {name: "San Francisco", country_id: 1}
])
Visit.create!([
  {city_id: 1, user_id: 1, start_date: nil, end_date: nil},
  {city_id: 1, user_id: 6, start_date: nil, end_date: nil},
  {city_id: 2, user_id: 7, start_date: nil, end_date: nil},
  {city_id: 3, user_id: 7, start_date: nil, end_date: nil},
  {city_id: 1, user_id: 8, start_date: nil, end_date: nil},
  {city_id: 4, user_id: 8, start_date: nil, end_date: nil},
  {city_id: 5, user_id: 6, start_date: nil, end_date: nil},
  {city_id: 6, user_id: 6, start_date: nil, end_date: nil},
  {city_id: 8, user_id: 6, start_date: "2005-04-10", end_date: "2005-04-27"},
  {city_id: 9, user_id: 7, start_date: "2018-04-03", end_date: "2018-04-10"},
  {city_id: 9, user_id: 6, start_date: nil, end_date: nil},
  {city_id: 10, user_id: 6, start_date: nil, end_date: nil},
  {city_id: 9, user_id: 6, start_date: "2018-04-03", end_date: "2018-04-11"}
])
Chatroom.create!([
  {},
  {},
  {},
  {},
  {}
])
Chat.create!([
  {content: "first chat!", user_id: 6, chatroom_id: 2},
  {content: "Second chat!", user_id: 6, chatroom_id: 2},
  {content: "Third chat!", user_id: 8, chatroom_id: 2},
  {content: "Add chat?", user_id: 8, chatroom_id: 1},
  {content: "Fourth Chat?", user_id: 8, chatroom_id: 2},
  {content: "Fifth chat", user_id: 8, chatroom_id: 2},
  {content: "Woohoo!", user_id: 7, chatroom_id: 3},
  {content: "Hi Jimmy!", user_id: 8, chatroom_id: 5},
  {content: "Hi Jason!", user_id: 7, chatroom_id: 5},
  {content: "Hi Jimmy!", user_id: 6, chatroom_id: 3},
  {content: "Hi Jason!", user_id: 6, chatroom_id: 2},
  {content: "How was jamaica?", user_id: 6, chatroom_id: 2},
  {content: "How are you?", user_id: 6, chatroom_id: 2},
  {content: "lsjdfal;", user_id: 6, chatroom_id: 2},
  {content: "Hi there!", user_id: 6, chatroom_id: 2},
  {content: "aljsdfk", user_id: 6, chatroom_id: 2},
  {content: "Hi!", user_id: 6, chatroom_id: 2},
  {content: "How are you?", user_id: 6, chatroom_id: 2},
  {content: "Hi Jimmy", user_id: 6, chatroom_id: 3},
  {content: "How was jamaica?", user_id: 6, chatroom_id: 3},
  {content: "Hi", user_id: 6, chatroom_id: 3},
  {content: "How was your trip?", user_id: 6, chatroom_id: 3},
  {content: "", user_id: 6, chatroom_id: 3},
  {content: "Hi Jimmy!", user_id: 6, chatroom_id: 3},
  {content: "", user_id: 6, chatroom_id: 3},
  {content: "Hi there!", user_id: 6, chatroom_id: 3},
  {content: "", user_id: 6, chatroom_id: 3},
  {content: "Hi!", user_id: 6, chatroom_id: 3},
  {content: "How was it?", user_id: 6, chatroom_id: 2},
  {content: "sldjfla", user_id: 6, chatroom_id: 2},
  {content: "", user_id: 6, chatroom_id: 2},
  {content: "How was australia?", user_id: 6, chatroom_id: 2},
  {content: "Hi Joe!", user_id: 7, chatroom_id: 3},
  {content: "Take a hint", user_id: 7, chatroom_id: 3},
  {content: "lsjf", user_id: 6, chatroom_id: 2},
  {content: "Hi Jimmy!", user_id: 6, chatroom_id: 3},
  {content: "yoo", user_id: 6, chatroom_id: 3}
])
ChatroomUser.create!([
  {user_id: 6, chatroom_id: 2},
  {user_id: 8, chatroom_id: 2},
  {user_id: 6, chatroom_id: 3},
  {user_id: 7, chatroom_id: 3},
  {user_id: 8, chatroom_id: 4},
  {user_id: 1, chatroom_id: 4},
  {user_id: 8, chatroom_id: 5},
  {user_id: 7, chatroom_id: 5}
])
Post.create!([
  {title: "Hiking", content: "go hike and stuff", latitude: nil, longitude: nil, visit_id: 1, post_image_file_name: nil, post_image_content_type: nil, post_image_file_size: nil, post_image_updated_at: nil},
  {title: "example title", content: "example content!", latitude: "", longitude: "", visit_id: 1, post_image_file_name: nil, post_image_content_type: nil, post_image_file_size: nil, post_image_updated_at: nil},
  {title: "Cool waterfall", content: "check it out", latitude: "8.181867824045451", longitude: "-81.4576372879232", visit_id: 17, post_image_file_name: "30629550_1112974772173634_1692957859043606528_o.jpg", post_image_content_type: "image/jpeg", post_image_file_size: 636402, post_image_updated_at: "2018-07-20 00:53:03"},
  {title: "Cool Beach", content: "Check it out", latitude: "9.508233270558634", longitude: "-84.37921364358044", visit_id: 17, post_image_file_name: "20180407_175703.jpg", post_image_content_type: "image/jpeg", post_image_file_size: 837169, post_image_updated_at: "2018-07-23 19:55:20"},
  {title: "Volcano", content: "Sweet volcano", latitude: "10.461405", longitude: "-84.702279", visit_id: 12, post_image_file_name: "DSCN7955.JPG", post_image_content_type: "image/jpeg", post_image_file_size: 3413619, post_image_updated_at: "2018-07-17 23:15:51"},
  {title: "Beach", content: "Cool beach", latitude: "", longitude: "", visit_id: 2, post_image_file_name: "20180407_192907.jpg", post_image_content_type: "image/jpeg", post_image_file_size: 1943420, post_image_updated_at: "2018-07-18 23:50:30"},
  {title: "fishing!", content: "go fishing and stuff", latitude: nil, longitude: nil, visit_id: 2, post_image_file_name: "pic05.jpg", post_image_content_type: "image/jpeg", post_image_file_size: 5560, post_image_updated_at: "2018-07-18 23:51:38"},
  {title: "Climbing", content: "Go climbing", latitude: "", longitude: "", visit_id: 6, post_image_file_name: "279616_31645_M2.jpg", post_image_content_type: "image/jpeg", post_image_file_size: 43174, post_image_updated_at: "2018-07-18 23:57:45"},
  {title: "Ron of Japan", content: "Eat the egg sauce", latitude: "", longitude: "", visit_id: 6, post_image_file_name: "1622_lobstertail_cooked_web.jpg", post_image_content_type: "image/jpeg", post_image_file_size: 59874, post_image_updated_at: "2018-07-18 23:58:28"},
  {title: "Restaurant", content: "Check out cool Restaurant!!", latitude: "", longitude: "", visit_id: 2, post_image_file_name: "download.jpeg", post_image_content_type: "image/jpeg", post_image_file_size: 10461, post_image_updated_at: "2018-07-18 23:59:32"},
  {title: "Statue", content: "look at statue", latitude: "", longitude: "", visit_id: 5, post_image_file_name: "Huge-Statue-in-Rio-de-Janeiro-Brazil.jpg", post_image_content_type: "image/jpeg", post_image_file_size: 228876, post_image_updated_at: "2018-07-19 00:06:35"},
  {title: "Great view", content: "Go here for great views", latitude: "", longitude: "", visit_id: 2, post_image_file_name: "dingalan-mountain-view.jpg", post_image_content_type: "image/jpeg", post_image_file_size: 57878, post_image_updated_at: "2018-07-19 00:11:07"}
])
Comment.create!([
  {user_id: 8, post_id: 1, content: "Cool!"},
  {user_id: 8, post_id: 1, content: "Go here too!"},
  {user_id: 7, post_id: 18, content: "I'm adding a comment!"}
])
Tag.create!([
  {name: "hiking"},
  {name: "nature"},
  {name: "wine"},
  {name: "views"},
  {name: "climbing"},
  {name: "wildlife"},
  {name: "food"},
  {name: "tag"},
  {name: "volcano"},
  {name: "map"},
  {name: "undefined"},
  {name: "camping"},
  {name: "waterfall"},
  {name: "drinks"},
  {name: "swimming"},
  {name: "beach"},
  {name: "surfing"},
  {name: "snorkeling"}
])
PostTag.create!([
  {post_id: 25, tag_id: 11},
  {post_id: 55, tag_id: 14},
  {post_id: 18, tag_id: 10},
  {post_id: 59, tag_id: 15},
  {post_id: 59, tag_id: 1},
  {post_id: 8, tag_id: 4},
  {post_id: 8, tag_id: 8},
  {post_id: 60, tag_id: 4},
  {post_id: 60, tag_id: 16},
  {post_id: 61, tag_id: 4},
  {post_id: 61, tag_id: 8},
  {post_id: 62, tag_id: 17},
  {post_id: 62, tag_id: 18},
  {post_id: 63, tag_id: 17},
  {post_id: 63, tag_id: 18},
  {post_id: 64, tag_id: 18},
  {post_id: 64, tag_id: 17},
  {post_id: 65, tag_id: 19},
  {post_id: 65, tag_id: 18},
  {post_id: 66, tag_id: 19},
  {post_id: 66, tag_id: 18},
  {post_id: 67, tag_id: 19},
  {post_id: 67, tag_id: 18},
  {post_id: 69, tag_id: 15},
  {post_id: 69, tag_id: 17},
  {post_id: 70, tag_id: 18},
  {post_id: 70, tag_id: 19},
  {post_id: 70, tag_id: 20},
  {post_id: 71, tag_id: 20},
  {post_id: 71, tag_id: 19}
])
Vote.create!([
  {user_id: 1, votable_id: 1, votable_type: "Post", positive: true},
  {user_id: 1, votable_id: 2, votable_type: "Post", positive: true},
  {user_id: 6, votable_id: 2, votable_type: "Post", positive: true},
  {user_id: 7, votable_id: 3, votable_type: "Post", positive: true},
  {user_id: 6, votable_id: 1, votable_type: "Comment", positive: true},
  {user_id: 7, votable_id: 1, votable_type: "Post", positive: true},
  {user_id: 8, votable_id: 5, votable_type: "Post", positive: true},
  {user_id: 6, votable_id: 5, votable_type: "Comment", positive: true},
  {user_id: 7, votable_id: 16, votable_type: "Comment", positive: true},
  {user_id: 7, votable_id: 2, votable_type: "Comment", positive: true},
  {user_id: 1, votable_id: 7, votable_type: "Post", positive: true},
  {user_id: 8, votable_id: 1, votable_type: "Post", positive: true},
  {user_id: 8, votable_id: 17, votable_type: "Post", positive: true},
  {user_id: 7, votable_id: 18, votable_type: "Post", positive: true},
  {user_id: 7, votable_id: 17, votable_type: "Post", positive: true},
  {user_id: 7, votable_id: 5, votable_type: "Post", positive: false},
  {user_id: 8, votable_id: 18, votable_type: "Post", positive: true},
  {user_id: 6, votable_id: 6, votable_type: "Post", positive: true},
  {user_id: 6, votable_id: 7, votable_type: "Post", positive: true},
  {user_id: 7, votable_id: 1, votable_type: "Comment", positive: true},
  {user_id: 6, votable_id: 2, votable_type: "Comment", positive: true},
  {user_id: 6, votable_id: 1, votable_type: "Post", positive: true}
])
