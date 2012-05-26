require 'singapore_relative_clock'

describe SingaporeRelativeClock do
	before(:all) do
		@clock = SingaporeRelativeClock.new
	end

	it "should return hours difference of input city from singapore" do
		@clock.timeDifferenceTo("Sydney").should == -2.0
	end
	

end