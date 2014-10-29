class User < ActiveRecord::Base
	has_many :section_edits
	has_many :sections, through: :section_edits

	has_many :user_pages
	has_many :pages, through: :user_pages 
end
