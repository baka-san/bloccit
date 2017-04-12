require 'rails_helper'

RSpec.describe Advertisement, type: :model do

  let(:advertisement) { Advertisement.create!(title: "New Post Title", body: "New Post Body") }

  describe "attributes" do
   it "has title and body attributes" do
     expect(advertisement).to have_attributes(title: "New Post Title", body: "New Post Body")
   end

   it "should respond to price" do
     expect(advertisement).to respond_to(:price)
   end
  end

end
