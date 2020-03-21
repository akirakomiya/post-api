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

require 'test_helper'

class PostCommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
