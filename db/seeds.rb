Post.destroy_all
User.destroy_all

avatar      = "#{Rails.root}/app/assets/images/users/avatars/medium/missing.png"

tom         = User.create(name: 'Tom',
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

wayne       = User.create(name: 'Wayne', password: '123123123', email: 'wayne@futureworkz.com', avatar: File.open(avatar))
james       = User.create(name: 'James', password: '123123123', email: 'james@futureworkz.com', avatar: File.open(avatar))
smith       = User.create(name: 'Smith', password: '123123123', email: 'smith@futureworkz.com', avatar: File.open(avatar))
oliver      = User.create(name: 'Oliver', password: '123123123', email: 'oliver@futureworkz.com', avatar: File.open(avatar))
robin       = User.create(name: 'Robin', password: '123123123', email: 'robin@futureworkz.com', avatar: File.open(avatar))
theo        = User.create(name: 'Theo', password: '123123123', email: 'theo@futureworkz.com', avatar: File.open(avatar))
yunchang    = User.create(name: 'Yunchang', password: '123123123', email: 'yunchang@futureworkz.com', avatar: File.open(avatar))

ruby_post   = Post.create(title: 'I love Ruby', content: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rerum porro, inventore rem eaque, omnis earum quos, velit nesciunt nostrum fugit perferendis maxime? Aspernatur quasi sint officiis fuga enim est quo nostrum iusto, blanditiis, recusandae quam, voluptatem veritatis mollitia doloremque nam eius illum commodi voluptate soluta suscipit qui reprehenderit totam! Sint!', user: tom)
rails_post  = Post.create(title: 'Rails is elegant', content: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat enim explicabo officia non cupiditate unde ducimus sequi sint nisi rerum, assumenda error natus aliquam totam id consequuntur beatae nulla necessitatibus eligendi, vitae quae labore dolor cum earum. Labore odit, porro id, ex blanditiis eveniet maxime reprehenderit laudantium, facere saepe delectus.', user: tom)

tom_comments = Comment.create([
  { message: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet in sequi aliquid, at ipsam. Animi modi molestias nesciunt, unde dolore.', user: wayne, commentable: tom },
  { message: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis laudantium, temporibus alias aliquam dicta cupiditate nesciunt corporis culpa, labore doloremque.', user: james, commentable: tom },
  { message: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium nam aliquam pariatur iusto, quod praesentium maxime earum asperiores molestiae possimus.', user: smith, commentable: tom },
  { message: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis, omnis. Dolores optio est ipsa voluptate ea, tempora magni voluptatibus. Doloribus.', user: oliver, commentable: tom },
  { message: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nobis repudiandae, accusamus ad velit magnam laborum. Tenetur consequatur velit, neque voluptates.', user: robin, commentable: tom },
  { message: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Debitis consequuntur perferendis impedit quisquam, natus nam, excepturi quas aut quam facere.', user: theo, commentable: tom },
  { message: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos quia eligendi autem temporibus, libero quaerat minus facilis iure adipisci aut!', user: yunchang, commentable: tom }
])

posts_comments = Comment.create([
  { message: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet in sequi aliquid, at ipsam. Animi modi molestias nesciunt, unde dolore.', user: wayne, commentable: ruby_post },
  { message: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis laudantium, temporibus alias aliquam dicta cupiditate nesciunt corporis culpa, labore doloremque.', user: james, commentable: ruby_post },
  { message: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium nam aliquam pariatur iusto, quod praesentium maxime earum asperiores molestiae possimus.', user: smith, commentable: ruby_post },
  { message: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis, omnis. Dolores optio est ipsa voluptate ea, tempora magni voluptatibus. Doloribus.', user: oliver, commentable: ruby_post },
  { message: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nobis repudiandae, accusamus ad velit magnam laborum. Tenetur consequatur velit, neque voluptates.', user: robin, commentable: ruby_post },
  { message: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Debitis consequuntur perferendis impedit quisquam, natus nam, excepturi quas aut quam facere.', user: theo, commentable: ruby_post },
  { message: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos quia eligendi autem temporibus, libero quaerat minus facilis iure adipisci aut!', user: yunchang, commentable: ruby_post },
  { message: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet in sequi aliquid, at ipsam. Animi modi molestias nesciunt, unde dolore.', user: wayne, commentable: rails_post },
  { message: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis laudantium, temporibus alias aliquam dicta cupiditate nesciunt corporis culpa, labore doloremque.', user: james, commentable: rails_post },
  { message: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium nam aliquam pariatur iusto, quod praesentium maxime earum asperiores molestiae possimus.', user: smith, commentable: rails_post },
  { message: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis, omnis. Dolores optio est ipsa voluptate ea, tempora magni voluptatibus. Doloribus.', user: oliver, commentable: rails_post },
  { message: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nobis repudiandae, accusamus ad velit magnam laborum. Tenetur consequatur velit, neque voluptates.', user: robin, commentable: rails_post },
  { message: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Debitis consequuntur perferendis impedit quisquam, natus nam, excepturi quas aut quam facere.', user: theo, commentable: rails_post },
  { message: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos quia eligendi autem temporibus, libero quaerat minus facilis iure adipisci aut!', user: yunchang, commentable: rails_post }
])
