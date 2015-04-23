class Comment < ActiveRecord::Base
  belongs_to :post

  validates :name, :presence => true,
  				   :length => { :maximum => 50}
  validates :body, :presence => true
end
