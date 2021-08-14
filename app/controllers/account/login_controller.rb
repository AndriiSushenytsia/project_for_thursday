class Account::LoginController < ApplicationController
  before_action :user_signed_in?
end
