require_relative "../lib/member.rb"

describe "TrainifyChecker" do

    let (:checker) {Member.new}
        #find_booked_trainers
    it "returns a list of booked trainers" do
        expect(checker.find_booked_trainers).to be(true)
    end

    
end