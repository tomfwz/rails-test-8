User.destroy_all
Profile.destroy_all
Post.destroy_all
Comment.destroy_all

tom = User.create(name: 'Tom', email: 'tom@futureworkz.com')
tom_profile = tom.