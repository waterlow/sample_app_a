class Micropost < ApplicationRecord
  default_scope { order(created_at: :desc) }

  CONTENT_TYPE_WHITELIST = %w[image/jpeg image/gif image/png]

  belongs_to :user
  validates :user_id, presence: true
  validates :content, presence: true, length: {maximum: 140}
  validate :picture_size, if: -> {picture.attached?}
  validate :picture_content_type, if: -> {picture.attached?}

  has_one_attached :picture

  private

  def picture_size
    if picture.byte_size > 5.megabytes
      errors.add(:picture, "should be less than 5MB")
    end
  end

  def picture_content_type
    unless picture.content_type.in?(CONTENT_TYPE_WHITELIST)
      errors.add(:picture, "should be in #{CONTENT_TYPE_WHITELIST}")
    end
  end
end
