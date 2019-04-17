
m1 = Member.find_or_create_by(first_name: "Lola", last_name: "smith", age: 25, gender: "Female")#0
m2 = Member.find_or_create_by(first_name: "Marie", last_name: "Beckley", age: 33, gender: "Female")#1
m3 = Member.find_or_create_by(first_name: "Israel", last_name: "McBroom", age: 20, gender: "Male")#2
m4 = Member.find_or_create_by(first_name: "Fiona", last_name: "Fearson", age: 23, gender: "Female")#3
m5 = Member.find_or_create_by(first_name: "Mario", last_name: "Rod", age: 34, gender: "Male")#4
m6 = Member.find_or_create_by(first_name: "Lola", last_name: "smith", age: 25, gender: "Female")#5
 
t1 = Trainer.find_or_create_by(name: "Chelsea Rawlings", yrs_of_exp: 12) #0
t2 = Trainer.find_or_create_by(name: "Andy Guerra", yrs_of_exp: 10) #1
t3 = Trainer.find_or_create_by(name: "Jerry Hines", yrs_of_exp: 8)#2
t4 = Trainer.find_or_create_by(name: "Errol", yrs_of_exp: 11)#3

Session.find_or_create_by(member_id: m1.id, trainer_id: t1.id)
Session.find_or_create_by(member_id: m3.id, trainer_id: t3.id)
Session.find_or_create_by(member_id: m3.id, trainer_id: t2.id)
Session.find_or_create_by(member_id: m4.id, trainer_id: t4.id)
Session.find_or_create_by(member_id: m5.id, trainer_id: t1.id)
Session.find_or_create_by(member_id: m2.id, trainer_id: t3.id)
Session.find_or_create_by(member_id: m5.id, trainer_id: t1.id)
Session.find_or_create_by(member_id: m5.id, trainer_id: t4.id)
Session.find_or_create_by(member_id: m2.id, trainer_id: t3.id)


