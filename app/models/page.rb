class Page < ActiveRecord::Base
  belongs_to :subject

  has_many :user_pages
  has_many :user, through: :user_pages
end
