# == Schema Information
#
# Table name: tags
#
#  id            :integer          not null, primary key
#  name          :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  post_image_id :integer
#

class Tag < ApplicationRecord
	 belongs_to :post_image
end
