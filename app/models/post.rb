class Post < ActiveRecord::Base
    belongs_to :user
    has_many :post_tags 
    has_many :tags, through: :post_tags

    # validates_presence_of :name, :content
    validates :name, presence: true
    validates :content, presence: true
    
    accepts_nested_attributes_for :tags, reject_if: proc { |attributes| attributes[:name].blank? }

    # def tags_attributes=(tag_attributes)
    #     tag_attributes.values.each do |tag_attribute|
    #       tag = Tag.find_or_create_by(tag_attribute)
    #       # self.post_tags.build(tag: tag)
    #       self.tags << tag
    #     end
    # end
  
end
