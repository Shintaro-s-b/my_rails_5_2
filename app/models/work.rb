class Work < ApplicationRecord
  has_many :work_tag_relations
  has_many :tags, through: :work_tag_relations
  has_many :comments
  has_one_attached :image
end
