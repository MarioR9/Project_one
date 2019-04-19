require_relative '../config/environment.rb'
require 'pry'

describe 'find_booked_trainers' do
        let (:tito) {Member.find_or_create_by(first_name: "Tito", last_name: "luz", age: 20, gender: "Male")}
    let (:steve) {Member.find_or_create_by(first_name: "Steve", last_name: "smith", age: 32, gender: "Male")}
    let (:ronald) {Member.find_or_create_by(first_name: "Ronald", last_name: "mood", age: 56, gender: "non-binary")}

    let (:marcus) {Trainer.find_or_create_by(name: "Marcus", yrs_of_exp: 12)}
    let (:danny) {Trainer.find_or_create_by(name: "Danny", yrs_of_exp: 8)}

    let (:session1) {Session.find_or_create_by(member_id: tito.id, trainer_id: marcus.id)}
    let (:session2) {Session.find_or_create_by(member_id: steve.id, trainer_id: danny.id)}
    it "returns an array of booked sessions for the member instance." do
        expect(tito.find_booked_trainers).to include(session1)
      end


    describe 'get_member_profile' do

      let (:tito) {Member.find_or_create_by(first_name: "Tito", last_name: "luz", age: 20, gender: "Male")}
      let (:steve) {Member.find_or_create_by(first_name: "Steve", last_name: "smith", age: 32, gender: "Male")}
      let (:ronald) {Member.find_or_create_by(first_name: "Ronald", last_name: "mood", age: 56, gender: "non-binary")}

      let (:marcus) {Trainer.find_or_create_by(name: "Marcus", yrs_of_exp: 12)}
      let (:danny) {Trainer.find_or_create_by(name: "Danny", yrs_of_exp: 8)}

      let (:session1) {Session.find_or_create_by(member_id: tito.id, trainer_id: marcus.id)}
      let (:session2) {Session.find_or_create_by(member_id: steve.id, trainer_id: danny.id)}
    it "returns all information about a specific member" do
      expect(ronald.get_member_profile).to include(ronald)
      expect(ronald.get_member_profile).not_to include(tito)
    end


    describe 'display_all_trainers' do

      let (:tito) {Member.find_or_create_by(first_name: "Tito", last_name: "luz", age: 20, gender: "Male")}
      let (:steve) {Member.find_or_create_by(first_name: "Steve", last_name: "smith", age: 32, gender: "Male")}
      let (:ronald) {Member.find_or_create_by(first_name: "Ronald", last_name: "mood", age: 56, gender: "non-binary")}

      let (:marcus) {Trainer.find_or_create_by(name: "Marcus", yrs_of_exp: 12)}
      let (:danny) {Trainer.find_or_create_by(name: "Danny", yrs_of_exp: 8)}

      let (:session1) {Session.find_or_create_by(member_id: tito.id, trainer_id: marcus.id)}
      let (:session2) {Session.find_or_create_by(member_id: steve.id, trainer_id: danny.id)}
      let (:session3) {Session.find_or_create_by(member_id: tito.id, trainer_id: danny.id)}
    it "returns an array of all trainers" do
      expect(Trainer.display_all_trainers).to include(danny)
    end


      describe 'remove_session' do
                let (:tito) {Member.find_or_create_by(first_name: "Tito", last_name: "luz", age: 20, gender: "Male")}
        let (:steve) {Member.find_or_create_by(first_name: "Steve", last_name: "smith", age: 32, gender: "Male")}
        let (:ronald) {Member.find_or_create_by(first_name: "Ronald", last_name: "mood", age: 56, gender: "non-binary")}

        let (:marcus) {Trainer.find_or_create_by(name: "Marcus", yrs_of_exp: 12)}
        let (:danny) {Trainer.find_or_create_by(name: "Danny", yrs_of_exp: 8)}

        let (:session1) {Session.find_or_create_by(member_id: tito.id, trainer_id: marcus.id)}
        let (:session2) {Session.find_or_create_by(member_id: steve.id, trainer_id: danny.id)}
        let (:session3) {Session.find_or_create_by(member_id: tito.id, trainer_id: danny.id)}
    it "removes a session from a member's booked sessions" do
# binding.pry
          before_aug_sessions = tito.sessions.count
          after_aug_sessions = tito.sessions.count - 1
          expect(after_aug_sessions).to eq(before_aug_sessions -1)
        end

        describe 'Member.register_new_user' do
          it 'creates a new instance of the member class' do
            before_new_member = Member.all.count
            Member.register_new_user
            after_new_member = Member.all.count
            expect(after_new_member).to eq(before_new_member + 1)
          end

        end
        end
        end
      end
    end
