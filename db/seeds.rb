# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)







jl = User.create(email: 'hi@gmail.com', password: 'password')
property = Property.new(address: "666 sin st", square_meter: 999, furnished: true)

jl.properties << property

bedroom_one = Room.create(name: "bedroom 1", property_id: property.id)
bedroom_two = Room.create(name: "bedroom 2", property_id: property.id)

door = RoomElement.create(name: "door", room_id: bedroom_one.id)

lease = Lease.create(user_id: jl.id, property_id: property.id, start_date: "16/08/88", end_date: "22/11/18")

conditionreport1 = ConditionReport.create(owner_signed: false, tenant_signed: false, lease_id: lease.id)

comment = Comment.create(text_comment: "hi", room_element_id: door.id, condition_report_id: conditionreport1.id, user_id: jl.id, state: "clean")
comment.remote_photo_url = "https://images.unsplash.com/photo-1494801819652-1ca9fe13134c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=41a38ea25d9615a1d36d7785ecff91bd&auto=format&fit=crop&w=634&q=80"
comment.save











