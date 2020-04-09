# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Department.destroy_all
User.destroy_all
Comment.destroy_all
Location.destroy_all
Project.destroy_all

Department.create(name: 'Marketing')
Department.create(name: 'Finance')
Department.create(name: 'Sales & Trading')
Department.create(name: 'IBD')

Location.create(address: '1585 Broadway', city: 'New York', state: 'NY', country: 'United States', zip_code: 10019)
Location.create(address: '750 7th Ave', city: 'New York', state: 'NY', country: 'United States', zip_code: 10019)
Location.create(address: 'One Austin Road West', city: 'Hong Kong', state: 'China', country: 'China', zip_code: 00000)
Location.create(address: '118 Lockwood Road', city: 'Syracuse', state: 'NY', country: 'United States', zip_code: 08394)

User.create(username: 'user1', name: 'the first user', password: 'a', type: 'submitter', email: 'abc@abc.com', department_id: Department.all.sample.id)
User.create(username: 'user2', name: 'the second user', password: 'a', type: 'approver', email: 'abc@abc.com', department_id: Department.all.sample.id)
User.create(username: 'user3', name: 'the third user', password: 'a', type: 'project manager', email: 'abc@abc.com', department_id: Department.all.sample.id)

Project.create(project_name: "3rd Floor Fitout", description: "Build out 3rd floor bullpen", user_id: User.all.sample.id, budget: 1000000, submitted_date: "2020-04-01", required_completion_date: "2020-08-01", status: 'pending', location_id: Location.all.sample.id)
Project.create(project_name: "4th Floor Fitout", description: "Build out 4th floor offices", user_id: User.all.sample.id, budget: 3000000, submitted_date: "2020-04-02", required_completion_date: "2020-08-01", status: 'pending', location_id: Location.all.sample.id)
Project.create(project_name: "Do stuff", description: "Build things", user_id: User.all.sample.id, budget: 2000000, submitted_date: "2020-04-06", required_completion_date: "2021-08-01", status: 'pending', location_id: Location.all.sample.id)
Project.create(project_name: "Build other stuff", description: "Hurry up and build it", user_id: User.all.sample.id, budget: 5000000, submitted_date: "2020-04-10", required_completion_date: "2020-08-01", status: 'pending', location_id: Location.all.sample.id)
Project.create(project_name: "3rd Floor Fitout - do it again, but right this time", description: "Build out 3rd floor bullpen", user_id: User.all.sample.id, budget: 10000000, submitted_date: "2020-04-01", required_completion_date: "2020-08-01", status: 'pending', location_id: Location.all.sample.id)

Comment.create(body: "Flerg", user_id: User.all.sample.id, project_id: Project.all.sample.id)
Comment.create(body: "Blerg", user_id: User.all.sample.id, project_id: Project.all.sample.id)
Comment.create(body: "Faskjt", user_id: User.all.sample.id, project_id: Project.all.sample.id)
Comment.create(body: "aslkj", user_id: User.all.sample.id, project_id: Project.all.sample.id)
Comment.create(body: "lkjaskj", user_id: User.all.sample.id, project_id: Project.all.sample.id)
Comment.create(body: "Flerg1", user_id: User.all.sample.id, project_id: Project.all.sample.id)
Comment.create(body: "Flerg2", user_id: User.all.sample.id, project_id: Project.all.sample.id)
Comment.create(body: "Flerg3", user_id: User.all.sample.id, project_id: Project.all.sample.id)
Comment.create(body: "Flerg4", user_id: User.all.sample.id, project_id: Project.all.sample.id)
Comment.create(body: "Flerg5", user_id: User.all.sample.id, project_id: Project.all.sample.id)
Comment.create(body: "Flerg6", user_id: User.all.sample.id, project_id: Project.all.sample.id)
Comment.create(body: "Flerg7", user_id: User.all.sample.id, project_id: Project.all.sample.id)
Comment.create(body: "Flerg8", user_id: User.all.sample.id, project_id: Project.all.sample.id)
Comment.create(body: "Flerg9", user_id: User.all.sample.id, project_id: Project.all.sample.id)
Comment.create(body: "Flerg10", user_id: User.all.sample.id, project_id: Project.all.sample.id)
