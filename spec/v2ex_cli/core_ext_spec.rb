require "spec_helper"

describe Hash do
  subject { Hash.new }
  it { should respond_to :recursively_symbolize_keys }
  context "recursively_symbolize_keys" do
    it "should symbolize keys" do
      expected = { :key => 'value' }
      { 'key' => 'value' }.recursively_symbolize_keys.should == expected
    end
    it "should do it recursively" do
      expected = { :drinks => { :martini => { :garnish => "olive" }, :gibson => { :garnish => "onion" }}}
      hash = { "drinks" => { "gibson" => { "garnish" => "onion" }, "martini" => { "garnish" => "olive" }}}

      hash.recursively_symbolize_keys.should == expected
    end
  end
end
