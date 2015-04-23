class Post < ActiveRecord::Base

	acts_as_votable
	belongs_to :user
	has_many :comments

	validates :title, :presence => true,
					 :length => { :maximum => 50} 
	validates :body, :presence => true

	

	scope :search,  lambda {|query|
		where(["title LIKE ?", "%#{query }%"])
	}
end
