class Article < ActiveRecord::Base
	validates :content, presence: true, length: { maximum: 16384 }
	validates :title, presence: true, length: { maximum: 140 }
	mount_uploader :picture, PictureUploader
	default_scope -> { order(created_at: :desc) }
	validate :picture_size

	private
		def picture_size
			if picture.size > 5.megabytes
				errors.add(:picture, "should be less than 5 MB")
			end
		end
end

