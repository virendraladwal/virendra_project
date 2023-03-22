class Idproof < ApplicationRecord
  belongs_to :merchant
  mount_uploader :document, ImageUploader
end
