class Post < ApplicationRecord
	belongs_to :category
	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
	validates :title, :content, :category_id, presence: true
end
