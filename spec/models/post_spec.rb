require "rails_helper"

RSpec.describe Post, type: :model do
  current_user = User.first_or_create(email: "test@test.com", password: "password", password_confirmation: "password")

  it "has content" do

    post = Post.new(content: "hello", user: current_user)
    expect(post.content).equal? "hello"
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