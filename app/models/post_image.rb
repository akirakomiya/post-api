# == Schema Information
#
# Table name: post_images
#
#  id          :integer          not null, primary key
#  description :text
#  title       :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  image_id    :text
#  user_id     :integer
#

class PostImage < ApplicationRecord
	belongs_to :user
	has_many :post_comments, dependent: :destroy
	has_many :favorites, dependent: :destroy
	validates :title, presence: true
    validates :image, presence: true
    validates :description, length: { maximum: 199 }

    attachment :image

    def favorited_by?(user)
          return favorites.where(user_id: user.id).exists?
    end
end
