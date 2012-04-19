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

describe Array do
  subject { Array.new }
  it { should respond_to :recursively_symbolize_keys }

  context "recursively_symbolize_keys" do
    it "should symbolize keys" do
      expected = [{ :key1 => 'value1' }, { :key2 => 'value2' }]
      [{ 'key1' => 'value1' }, { 'key2' => 'value2' }].recursively_symbolize_keys.should == expected
    end

    it "should do it recursively" do
      expected = { :drinks => [{ :martini => "olive" }, { :gibson => "onion" }] }
      hash = { "drinks" => [{ "martini" => "olive" }, { "gibson" => "onion" }] }

      hash.recursively_symbolize_keys.should == expected
    end
  end
end
