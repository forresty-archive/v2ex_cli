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

  context '#replies' do
    it "should retrieve replies as array" do
      subject.stub(:get).and_return(fixture('replies/32520.json'))
      subject.replies(32520).should be_an Array
    end
  end

  context '#topic' do
    it "should retrieve topic as hash" do
      subject.stub(:get).and_return(fixture('topics/32520.json'))
      subject.topic(32520).should be_a Hash
    end
  end

  context '#user_topics' do
    it "should retrieve topics as Array" do
      subject.stub(:get).and_return(fixture('topics/livid.json'))
      subject.user_topics('livid').should be_an Array
    end
  end

  context '#user_topics' do
    it "should retrieve topics as Array" do
      subject.stub(:get).and_return(fixture('topics/xbox360.json'))
      subject.node_topics('xbox360').should be_an Array
    end
  end

  context '#api_endpoint' do
    its(:api_endpoint) { should =~ /v2ex/ }
  end
end
