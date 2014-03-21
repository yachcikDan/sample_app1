require 'spec_helper'

describe ApplicationHelper do

  describe "full_title" do
    context 'when page_title is any old thing and not empty' do
      let(:page_title) { 'foo' }
      
      it "should include the page title" do
        expect(full_title(page_title)).to eq "Ruby on Rails Tutorial Sample App | foo"
      end
    end
    context 'when page_title is empty' do
      let(:page_title) { '' }
      
      it "is just the base title" do
        expect(full_title("")).not_to match(/\|/)
      end
    end
  end
end
