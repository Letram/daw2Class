class Origami < ApplicationRecord
mount_uploader :imagen, ImageUploader
default_scope {order 'lower(name)'}
scope :favs, ->{where("origamis.favourite = ?", true)}
end
