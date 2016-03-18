Post.destroy_all
User.destroy_all
Comment.destroy_all

avatar  = "#{Rails.root}/app/assets/images/users/avatars/medium/missing.png"

tom     = User.create(name: 'Tom',
                          password: '123123123',
                          email: 'tom@futureworkz.com',
                          avatar: File.open(avatar),
                          display_name: 'Tom Ta',
                          designation: 'Developer',
                          dob: 23.years.ago,
                          address: '1/4D Ba Trieu, Ap Dinh, Tan Xuan, Hoc Mon',
                          city: 'Ho Chi Minh',
                          gender: :male,
                          mobile_number: '01675166477')

wayne   = User.create(name: 'Wayne',
                          password: '123123123',
                          email: 'wayne@futureworkz.com',
                          avatar: File.open(avatar),
                          display_name: 'Wayne Tng',
                          designation: 'Developer',
                          dob: 26.years.ago,
                          address: '184/17 Dien Bien Phu, P.17, Binh Thanh,',
                          city: 'Ho Chi Minh',
                          gender: :male,
                          mobile_number: '01675166477')

james   = User.create(name: 'James',
                          password: '123123123',
                          email: 'james@futureworkz.com',
                          avatar: File.open(avatar),
                          display_name: 'James La',
                          designation: 'Developer',
                          dob: 26.years.ago,
                          address: '184/17 Dien Bien Phu, P.17, Binh Thanh,',
                          city: 'Ho Chi Minh',
                          gender: :male,
                          mobile_number: '01675166477')

ruby_post     = Post.create(title: 'I love Ruby', content: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rerum porro, inventore rem eaque, omnis earum quos, velit nesciunt nostrum fugit perferendis maxime? Aspernatur quasi sint officiis fuga enim est quo nostrum iusto, blanditiis, recusandae quam, voluptatem veritatis mollitia doloremque nam eius illum commodi voluptate soluta suscipit qui reprehenderit totam! Sint!', user: tom)
rails_post    = Post.create(title: 'Rails is elegant', content: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat enim explicabo officia non cupiditate unde ducimus sequi sint nisi rerum, assumenda error natus aliquam totam id consequuntur beatae nulla necessitatibus eligendi, vitae quae labore dolor cum earum. Labore odit, porro id, ex blanditiis eveniet maxime reprehenderit laudantium, facere saepe delectus.', user: tom)

tom_comments  = Comment.create([
  { message: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet in sequi aliquid, at ipsam. Animi modi molestias nesciunt, unde dolore.', user: wayne, commentable: tom },
  { message: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis laudantium, temporibus alias aliquam dicta cupiditate nesciunt corporis culpa, labore doloremque.', user: james, commentable: tom },
])

posts_comments  = Comment.create([
  { message: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet in sequi aliquid, at ipsam. Animi modi molestias nesciunt, unde dolore.', user: wayne, commentable: ruby_post },
  { message: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis laudantium, temporibus alias aliquam dicta cupiditate nesciunt corporis culpa, labore doloremque.', user: james, commentable: ruby_post },
  { message: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet in sequi aliquid, at ipsam. Animi modi molestias nesciunt, unde dolore.', user: wayne, commentable: rails_post },
  { message: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis laudantium, temporibus alias aliquam dicta cupiditate nesciunt corporis culpa, labore doloremque.', user: james, commentable: rails_post },
])
