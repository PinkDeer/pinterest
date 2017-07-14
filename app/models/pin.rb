class Pin < ActiveRecord::Base
  acts_as_votable
  belongs_to :user

  has_attached_file :image, :styles => { :medium => "300x300>" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  is_impressionable :counter_cache => true, :column_name => :impressions_count
end
