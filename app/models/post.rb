class Post < ActiveRecord::Base
		belongs_to :user
		has_many :comments, dependent: :destroy
		has_attached_file :photo, styles: { thumb: "384x216>", large: "896x504>"}
		validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
		validates :photo,
			presence: true
		validates :content,
			presence: true
		validates :title,
			presence: true
end

