# == Schema Information
#
# Table name: equipment
#
#  id               :integer          not null, primary key
#  components_count :integer
#  description      :text
#  retired          :boolean
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  home_id          :integer
#
class Equipment < ApplicationRecord

  has_many(:components, { :class_name => "Component", :foreign_key => "equipment_id", :dependent => :destroy })
  belongs_to(:home, { :required => false, :class_name => "Household", :foreign_key => "home_id", :counter_cache => true })
  
end
