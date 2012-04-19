require "spec_helper"

describe V2exCli::Engine do
  subject { V2exCli::Engine }
  it { should respond_to :latest }

  context '#latest' do
    it "should retrieve latest topics" do
      subject.stub(:get).and_return(fixture('topics/latest.json'))
      subject.latest.should be_an Array
    end
  end

  context '#api_endpoint' do
    its(:api_endpoint) { should =~ /v2ex/ }
  end
end
