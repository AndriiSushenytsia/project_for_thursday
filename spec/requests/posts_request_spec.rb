require 'rails_helper'

RSpec.describe "Posts", type: :request do

  it "renders posts page" do
  get "/posts"
  expect(response).to have_http_status(200)
  end
end