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
end
