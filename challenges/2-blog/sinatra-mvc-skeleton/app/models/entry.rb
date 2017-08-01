class Entry < ActiveRecord::Base
  belongs_to :author
  
  has_many :related_subjects
  #has_many :tags, through: :related_subjects
end
