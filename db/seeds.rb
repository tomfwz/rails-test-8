User.destroy_all
Post.destroy_all

avatar      = "#{Rails.root}/app/assets/images/users/avatars/medium/missing.png"

tom         = User.create!(name: 'Tom',   password: '123123123', email: 'tom@futureworkz.com', avatar: File.open(avatar))
wayne       = User.create!(name: 'Wayne', password: '123123123', email: 'wayne@futureworkz.com', avatar: File.open(avatar))
james       = User.create!(name: 'James', password: '123123123', email: 'james@futureworkz.com', avatar: File.open(avatar))
smith       = User.create!(name: 'Smith', password: '123123123', email: 'smith@futureworkz.com', avatar: File.open(avatar))
oliver      = User.create!(name: 'Oliver', password: '123123123', email: 'oliver@futureworkz.com', avatar: File.open(avatar))
robin       = User.create!(name: 'Robin', password: '123123123', email: 'robin@futureworkz.com', avatar: File.open(avatar))
theo        = User.create!(name: 'Theo', password: '123123123', email: 'theo@futureworkz.com', avatar: File.open(avatar))
yunchang    = User.create!(name: 'Yunchang', password: '123123123', email: 'yunchang@futureworkz.com', avatar: File.open(avatar))

tom_profile = Profile.create!(
                        display_name: 'Tom Ta',
                        designation: 'Developer',
                        dob: 23.years.ago,
                        address: '1/4D Ba Trieu, Ap Dinh, Tan Xuan, Hoc Mon',
                        city: 'Ho Chi Minh',
                        gender: :male,
                        mobile_number: '01675166477',
                        user: tom)

ruby_post   = Post.create!(title: 'I love Ruby', content: 'Ruby is awesome...', user: tom)
rails_post  = Post.create!(title: 'Rails is elegant', content: 'One of the most elegant web framework is Ruby on Rails...', user: tom)

tom_profile_comments = Comment.create!([
  { message: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet in sequi aliquid, at ipsam. Animi modi molestias nesciunt, unde dolore.', user: wayne, commentable: tom_profile },
  { message: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis laudantium, temporibus alias aliquam dicta cupiditate nesciunt corporis culpa, labore doloremque.', user: james, commentable: tom_profile },
  { message: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium nam aliquam pariatur iusto, quod praesentium maxime earum asperiores molestiae possimus.', user: smith, commentable: tom_profile },
  { message: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis, omnis. Dolores optio est ipsa voluptate ea, tempora magni voluptatibus. Doloribus.', user: oliver, commentable: tom_profile },
  { message: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nobis repudiandae, accusamus ad velit magnam laborum. Tenetur consequatur velit, neque voluptates.', user: robin, commentable: tom_profile },
  { message: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Debitis consequuntur perferendis impedit quisquam, natus nam, excepturi quas aut quam facere.', user: theo, commentable: tom_profile },
  { message: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos quia eligendi autem temporibus, libero quaerat minus facilis iure adipisci aut!', user: yunchang, commentable: tom_profile },
])
