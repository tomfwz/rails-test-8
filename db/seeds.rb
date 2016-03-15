User.destroy_all
Post.destroy_all

tom         = User.create!(name: 'Tom',   password: '123123123', email: 'tom@futureworkz.com')
wayne       = User.create!(name: 'Wayne', password: '123123123', email: 'wayne@futureworkz.com')
james       = User.create!(name: 'James', password: '123123123', email: 'james@futureworkz.com')
smith       = User.create!(name: 'smith', password: '123123123', email: 'smith@futureworkz.com')

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
