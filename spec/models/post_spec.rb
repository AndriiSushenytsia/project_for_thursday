# == Schema Information
#
# Table name: posts
#
#  id          :integer          not null, primary key
#  content     :text
#  description :string
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#
require "rails_helper"

RSpec.describe Post, type: :model do
  it { is_expected.to validate_presence_of(:content) }
  it { is_expected.to validate_length_of(:content) }

  it { is_expected.to belong_to(:user) }
end
