class Provider < ApplicationRecord
  belongs_to :destination

  def full_name
    "#{first_name} #{last_name}"
  end
  
end
