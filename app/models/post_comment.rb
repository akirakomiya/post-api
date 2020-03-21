# == Schema Information
#
# Table name: post_comments
#
#  id            :integer          not null, primary key
#  comment       :text
#  score         :decimal(5, 3)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  post_image_id :integer
#  user_id       :integer
#

class PostComment < ApplicationRecord
  belongs_to :user
  belongs_to :post_image
end
