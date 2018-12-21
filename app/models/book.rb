class Book < ApplicationRecord
	 has_attached_file :image, styles: { medium: "300x300>", thumb: "150x150>" }
	 validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
	belongs_to :user

	mount_uploaders :libraries, LibraryUploader


  serialize :libraries, JSON # If you use SQLite, add this line.
  validates :name,:body,:libraries,:image, presence: true
  validates :name, length: 4..256
  validates :body, length: 8..256
  has_many :book_comments

end
