# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  uid                    :string
#  login                  :string
#  role_id                :bigint           not null
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  confirmation_token     :string
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  unconfirmed_email      :string
#  failed_attempts        :integer          default(0), not null
#  unlock_token           :string
#  locked_at              :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class User < ApplicationRecord
  include SharedUtils::Generate
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
 

  before_save :generate_random_number_uid
  
  
  # Relationships
  belongs_to :role
  has_one  :profile, dependent: :destroy
  has_many :banks, dependent: :destroy
  has_many :wallets, dependent: :destroy
  has_many :incomes, dependent: :destroy
  has_many :income_types, dependent: :destroy
  has_many :debt_types, dependent: :destroy
  has_many :contact_types, dependent: :destroy
  has_many :debts, dependent: :destroy
  has_many :expense_categories, dependent: :destroy
  has_many :expenses, dependent: :destroy
  has_many :savings, dependent: :destroy
  has_many :priorities, dependent: :destroy





  # Add nested attributes for profile.
  accepts_nested_attributes_for :profile
    
  # Validations

  #validates :login, presence: true, uniqueness: true

  # Change default params ID to uid
  def to_param
    uid
  end
  
def set_role
    unless self.role.present?
       self.role = Role.find_by(name: "user").name
              
       puts "ROLE: #{self.role}"
    end
 end


  def superuser?
    if self.role.name == "superuser"
      true 
    else
      false
    end
  end

    def admin?
      if self.role.name == "administrator"
        true 
      else
        false
      end
    end

    def user?
    if self.role.name == "user"
      true 
    else
      false
    end
    end

    def guest?
    if self.role.name == "guest"
      true 
    else
      false
    end
    end


  private 

  def set_default_status
    unless self.status.present?
      self.status = "enable"
    end
  end


end
