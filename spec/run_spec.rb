require_relative "../lib/member.rb"

describe "TrainifyChecker" do

    let (:tito) {Member.find_or_create_by(first_name: "Tito", last_name: "luz", age: 20, gender: "Male"}
    let (:steve) {Member.find_or_create_by(first_name: "Steve", last_name: "smith", age: 32, gender: "Male"}
    let (:ronald) {Member.find_or_create_by(first_name: "Ronald", last_name: "mood", age: 56, gender: "non-binary"}

    let (:marcus) {Trainer.find_or_create_by(name: "Marcus", yrs_of_exp: 12}
    let (:danny) {Trainer.find_or_create_by(name: "Danny", yrs_of_exp: 8}

    let (:session1) {Session.find_or_create_by(member_id: tito.id, trainer_id: marcus.id}


        #find_booked_trainers
    it "returns a list of booked trainers" do
        expect(tito.remove_session).to be(true)
    end
end
