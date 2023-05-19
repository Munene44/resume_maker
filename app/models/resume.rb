class Resume < ApplicationRecord
    validates :name, :email, presence: true
  end
  