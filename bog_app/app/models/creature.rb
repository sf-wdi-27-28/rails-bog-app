class Creature < ActiveRecord::Base
  validates :name, presence: true, length: { minimum: 1, maximum: 30, too_short: "must have at least %{count} character(s)", too_long: "must have at most %{count} characters" }
  validates :description, presence: true, length: {maximum: 255, too_long: "%{count} characters is the maximum allowed" }

  has_attached_file :image, styles: { medium: "300x300>", thumb: "150x150#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates_with AttachmentSizeValidator, attributes: :image, less_than: 5.megabytes
end
