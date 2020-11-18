# == Schema Information
#
# Table name: clothes
#
#  id          :integer          not null, primary key
#  description :text
#  picture     :string
#  quantity    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  home_id     :integer
#
class Clothe < ApplicationRecord

  belongs_to(:home, { :required => false, :class_name => "Household", :foreign_key => "home_id", :counter_cache => true })

  
end
