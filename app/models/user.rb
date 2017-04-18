class User < ActiveRecord::Base
	before_create :confirmation_token

	has_many :posts
	has_many :comments, dependent: :destroy

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	before_save { self.email = self.email.downcase } #ensure that unique emails only get saved

	validates :pseudonym, presence: true,
				length: { maximum: 50}
	validates :email, presence: true,
				uniqueness: { case_sensitive: false },
				length: { maximum: 250},
				format: { with: VALID_EMAIL_REGEX }
	has_secure_password
	validates :password, presence: true, length: { minimum: 7 }

	def email_activate
    self.email_confirmed = true
    self.confirm_token = nil
    save!(:validate => false)
  end

	private
		def confirmation_token
			if self.confirm_token.blank?
				self.confirm_token = SecureRandom.urlsafe_base64.to_s
			end
		end
end
