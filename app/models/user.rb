# frozen_string_literal: true

class User < ApplicationRecord
  rolify
  resourcify
  # before_create :set_default_role, if: :new_record?

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :roles, presence: false

  enum role: %i[staff normal admin]

  private

  def set_default_role
    self.role ||= :normal
  end
end
