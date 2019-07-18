class Provider < ApplicationRecord
  belongs_to :destination

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.search(term)
    if term
      where('first_name LIKE ? or last_name LIKE ?', "%#{term}%", "%#{term}%")
    else
      all
    end
  end

end
