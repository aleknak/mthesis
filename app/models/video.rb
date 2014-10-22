class Video < ActiveRecord::Base

  # Association
  belongs_to :user

  # Uploaders
  mount_uploader :thumbnail, PictureUploader

end
