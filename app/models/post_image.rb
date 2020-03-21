# == Schema Information
#
# Table name: post_images
#
#  id         :integer          not null, primary key
#  caption    :text
#  shop_name  :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  image_id   :text
#  user_id    :integer
#

class PostImage < ApplicationRecord
	belongs_to :user
	has_many :tags, dependent: :destroy
	validates :shop_name, presence: true
    validates :image, presence: true

    attachment :image
end
