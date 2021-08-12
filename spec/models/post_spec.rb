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
  it { should validate_presence_of(:content) }
  it { should validate_length_of(:content) }

  it { should belong_to(:user) }
end
