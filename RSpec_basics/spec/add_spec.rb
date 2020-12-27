# let's test the add.rb program, first describe the method to test

require "add"

describe add(4,-5) do
  it "should receive two numbers as arguments" do
    expect { add(4,-5)}.to_not raise_error # expect that the args do not raise and error
  end

  it "should return the sum of those numbers" do
    expect (add(4,-5)) eq(-1) # expect that 4 + -5 returns -1
    expect (add(3,10)) eq(13)
  end
end