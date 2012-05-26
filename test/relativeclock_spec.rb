require 'singapore_relative_clock'

describe SingaporeRelativeClock do
	before(:all) do
		@clock = SingaporeRelativeClock.new
	end

	it "should return hours difference of input city from singapore" do
		@clock.timeDifferenceTo("Sydney").should == -2.0
	end
	
	it "should ask for input if city is missing" do
		@clock.timeDifferenceTo(" ").should_not be_nil
	end

end