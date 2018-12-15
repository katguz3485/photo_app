class Image < ApplicationRecord
  belongs_to :user
  mount_uploader :picture, PictureUploader
  validate :picture_size

  private

  def picture_size
    if picture.size > 5.megabytes
      errors.add(:picture, I18n.t("errors.messages.size_error"))
    end

  end

end
