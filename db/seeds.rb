User.destroy_all
Post.destroy_all

tom         = User.create(name: 'Tom', email: 'tom@futureworkz.com')
tom_profile = tom.profile.create(
                            display_name: 'Tom Ta',
                            designation: 'Developer',
                            dob: 23.years.ago,
                            address: '1/4D Ba Trieu, Ap Dinh, Tan Xuan, Hoc Mon',
                            city: 'Ho Chi Minh',
                            gender: :male,
                            mobile_number: '01675166477')

ruby_post   = Post.create(title: 'I love Ruby', content: 'Ruby is awesome...', user: tom)
rails_post  = Post.create(title: 'Rails is elegant', content: 'One of the most elegant web framework is Ruby on Rails...', user: tom)
