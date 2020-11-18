# == Schema Information
#
# Table name: users
#
#  id               :integer          not null, primary key
#  email            :string
#  households_count :integer
#  password_digest  :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  equipment_id     :integer
#  home_id          :integer
#
class User < ApplicationRecord
  validates :email, :uniqueness => { :case_sensitive => false }
  validates :email, :presence => true
  has_secure_password

  has_many(:households, { :class_name => "Household", :foreign_key => "owner_id", :dependent => :nullify })

  
end
