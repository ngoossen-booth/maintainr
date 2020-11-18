# == Schema Information
#
# Table name: households
#
#  id              :integer          not null, primary key
#  address         :string
#  clothes_count   :integer
#  equipment_count :integer
#  year_built      :date
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  owner_id        :integer
#
class Household < ApplicationRecord

  belongs_to(:owner, { :required => false, :class_name => "User", :foreign_key => "owner_id", :counter_cache => true })

  has_many(:equipment, { :class_name => "Equipment", :foreign_key => "home_id", :dependent => :nullify })

  has_many(:clothes, { :class_name => "Clothe", :foreign_key => "home_id", :dependent => :nullify })

  validates(:address, { :presence => true })

  validates(:address, { :uniqueness => { :case_sensitive => true } })

  
end
