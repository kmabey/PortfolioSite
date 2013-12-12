class Project < ActiveRecord::Base
  has_many :images
  has_and_belongs_to_many :teches
  accepts_nested_attributes_for :images, :reject_if => :all_blank
  accepts_nested_attributes_for :teches
end
