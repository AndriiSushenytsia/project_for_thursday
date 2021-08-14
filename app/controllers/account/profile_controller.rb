class Account::ProfileController < ApplicationController
  before_action :user_signed_in?
end
