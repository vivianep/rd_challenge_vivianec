require 'spec_helper'

describe Rd_challenge do 
	
before :each do 
	@instance= Rd_challenge.new("vivianecosta2794-46qy@force.com","vivi123456","pYZs1lIFOo9BPFQf6QWKnBNdv")
end

describe "#createLead" do
    it "Return that the email is not valid" do
        @instance.createLead("viviane","costa","viviane ","XXX","XXX","XXXX","XXXS").expect eql "Invalid email"
    end
    it "Return that one of the fields name, Last Name , Phone or email are empty" do
        @instance.createLead("viviane","C","viviane@email.com ","XXX","XXX","XXXX","XXXS").expect eql "Some obrigatory fields are empty"
    end

    it"Return the confirmation that he info was saved" do
    	 @instance.createLead("viviane","Costa","viviane@email.com ","XXX","XXX","XXXX","XXXS").expect eql "Lead saved"
end

end
end 
	