class User < ActiveRecord::Base
	has_many :stuff, class_name: "Stuff"
	has_many :following_relationships, 	class_name: "Relationship",
										foreign_key: "follower_id",
										dependent: :destroy
	has_many :followees, through: :following_relationships
end
