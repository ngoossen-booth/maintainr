# == Schema Information
#
# Table name: components
#
#  id           :integer          not null, primary key
#  retired      :boolean
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  equipment_id :integer
#
class Component < ApplicationRecord

  belongs_to(:equipment, { :required => false, :class_name => "Equipment", :foreign_key => "equipment_id", :counter_cache => true })

  
end
