class Employee < ActiveRecord::Base
  belongs_to :store

  validates_presence_of :first_name, :last_name, :store
  validates :hourly_rate, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 40,
    less_than_or_equal_to: 200
  }

  before_create :generate_password

  private

  def generate_password
    return unless password.nil?
    self.password = [*('a'..'z'),*('0'..'9')].shuffle[0,8].join
  end
end
