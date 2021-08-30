class PracticeResult < ApplicationRecord
  before_validation :set_name_if_nameless

  validates :name, presence: true, length: {maximum: 30}
  validates :score, presence: true
  private
  def set_name_if_nameless
    self.name = "名無し" if name.blank?
  end
end
