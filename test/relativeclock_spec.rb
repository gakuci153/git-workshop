require 'singapore_relative_clock'

describe SingaporeRelativeClock do
	before(:all) do
		@clock = SingaporeRelativeClock.new
	end

	it "should give -3 hours to Sydney during DST" do
		@clock.timeDifferenceTo("Sydney").should == -3.0
	end
	
	it "should ask for input if city is missing" do
		@clock.timeDifferenceTo("").should_not be_nil
	end

end