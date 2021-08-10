# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
require "rails_helper"

RSpec.describe Post, type: :model do
  current_user = User.first_or_create(email: "test@test.com", password: "password", password_confirmation: "password")

  it "has content" do

    post = Post.new(content: "hello", user: current_user)
    expect(post.content).equal? "hell"
  end

  it "can't be empty" do

    post = Post.new(content: "", user: current_user)
    expect(post).to_not be_valid
  end

  it "has maximum length" do
    
    post = Post.new(content: "a" * 513, user: current_user)
    expect(post).to_not be_valid
  end
end
