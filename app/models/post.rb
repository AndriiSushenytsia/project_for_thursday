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
class Post < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  validates :content, presence: true, length: { maximum: 2000 }
  validates :title, presence: true
  validates :description, presence: true
end
