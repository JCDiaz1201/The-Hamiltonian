class User < ActiveRecord::Base
	has_many :posts
	before_save { self.email = self.email.downcase } #ensure that unique emails only get saved
	validates :pseudonym, presence: true,
				length: { maximum: 50}
	validates :email, presence: true,
				uniqueness: { case_sensitive: false },
				length: { maximum: 250}
	has_secure_password
	validates :password, presence: true, length: { minimum: 7 }
end
