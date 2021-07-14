class User < ActiveRecord::Base
    has_many :posts
    # has_many :post_tags, through: :posts
    
    validates :name, presence: true
    validates :name, uniqueness: true
    #accepts_nested_attributes_for :posts, reject_if: proc { |attributes| attributes['title'].blank? }
end
