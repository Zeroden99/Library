class Book < ApplicationRecord
	belongs_to :user

	mount_uploaders :libraries, LibraryUploader
  serialize :libraries, JSON # If you use SQLite, add this line.
  validates :libraries, presence: true
end
