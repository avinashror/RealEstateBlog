class Post < ActiveRecord::Base
	has_many :comments
	belongs_to :user
	validates_presence_of :body, :title
end
