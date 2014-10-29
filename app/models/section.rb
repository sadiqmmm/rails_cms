class Section < ActiveRecord::Base
  belongs_to :page
  
  has_many :section_edits
  has_many :user, through: :section_edits
end
 