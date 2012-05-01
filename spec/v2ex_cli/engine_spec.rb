require "spec_helper"

describe V2exCli::Engine do
  subject { V2exCli::Engine.new }
  it { should respond_to :latest }
  let(:engine) { subject }

  context '#latest' do
    it "should retrieve latest topics" do
      engine.stub(:get).and_return(fixture('topics/latest.json'))
      engine.latest.should be_an Array
    end
  end

  context '#replies' do
    it "should retrieve replies as an array" do
      engine.stub(:get).and_return(fixture('replies/32520.json'))
      engine.replies(32520).should be_an Array
    end
  end

  context '#topic' do
    it "should retrieve topic as a hash" do
      engine.stub(:get).and_return(fixture('topics/32520.json'))
      engine.topic(32520).should be_a Hash
    end
  end

  context '#user_topics' do
    it "should retrieve topics as an Array" do
      engine.stub(:get).and_return(fixture('topics/livid.json'))
      engine.user_topics('livid').should be_an Array
    end
  end

  context '#user_topics' do
    it "should retrieve topics as an Array" do
      engine.stub(:get).and_return(fixture('topics/xbox360.json'))
      engine.node_topics('xbox360').should be_an Array
    end
  end

  context '#user_info' do
    it "should retrieve user info as a hash" do
      engine.stub(:get).and_return(fixture('members/livid.json'))
      engine.user_info('livid').should be_a Hash
    end
  end

  context '#nodes' do
    it "should retrieve all nodes" do
      engine.stub(:get).and_return(fixture('nodes/all.json'))
      engine.nodes.should be_an Array
    end
  end

  context '#default_endpoint' do
    its(:default_endpoint) { should =~ /v2ex/ }
  end
end
