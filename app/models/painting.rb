class Painting < ActiveRecord::Base
  attr_accessible :spot_id, :name, :image, :remote_image_url, :description
  belongs_to :spot
  mount_uploader :image, ImageUploader
  has_many :comments, :dependent => :destroy
end
