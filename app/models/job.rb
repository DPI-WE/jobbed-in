# == Schema Information
#
# Table name: jobs
#
#  id          :bigint           not null, primary key
#  category    :string
#  deadline    :date
#  description :string
#  link        :string
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#
class Job < ApplicationRecord
  include Ransackable

  belongs_to :user, required: true, class_name: "User", foreign_key: "user_id"
  # belongs_to :category, required: true, class_name: "Category", foreign_key: "category_id"
  #

  scope :default_order, -> { order(deadline: :asc) }
  scope :upcoming, -> { where(deadline: Date.today..) }

  validates :title, presence: true
  validates :category, presence: true

  # TODO: add enum for category so it can be a dropdown

  def to_s
    "#{title} (#{category})"
  end


end
