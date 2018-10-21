class Post < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true
  validates :visit_id, presence: true


  belongs_to :visit
  has_one :user, through: :visit
  has_many :votes, :as => :votable
  has_one :city, through: :visit
  has_many :comments
  has_many :post_tags
  has_many :tags, through: :post_tags
  has_many :images

  has_attached_file :post_image, styles: {
    medium: '300x300>',
    large: '600x600>'
  }
    
  validates_attachment :post_image,
    content_type: {
      content_type: ["image/jpeg", "image/gif", "image/png"]
    }, size: { in: 0..5.megabytes }

  def show_tags
    tag_name_array = []
    tags.each do |tag|
      tag_name_array << tag.name
    end
    tag_name_array.join(", ")
  end

  def upvotes
    votes.where(positive: true).count
  end

  def downvotes
    votes.where(positive: false).count
  end

  def score
    upvotes - downvotes
  end

  def formattedcreated_at
    self.created_at.strftime("%A, %d %b %Y %l:%M %p")
  end

  def formattedupdated_at
    self.updated_at.strftime("%A, %d %b %Y %l:%M %p")
  end

  def self.sort_by_score_asc
    # posts = self.all
    # posts.sort_by do |post|
    #   post.score
    # end
    posts = self.all
    posts.sort_by {|post| post.score}
  end

  def self.sort_by_score_desc
    posts = self.all
    posts.sort_by {|post| post.score }.reverse
  end
end
