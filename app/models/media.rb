# == Schema Information
#
# Table name: medias
#
#  id         :integer          not null, primary key
#  author     :string           not null
#  image      :string           not null
#  audio      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Media < ApplicationRecord
  mount_uploader :image, ImageUploader
  mount_uploader :audio, AudioUploader
end
