class Octopus < ApplicationRecord
  validate :check_legs

  private

  def check_legs
    if legs > 8
      errors.add(:legs, "An octopus doesn't have more than 8 legs!")
    elsif legs < 1
      errors.add(:legs, "An octopus needs legs to swim!!!!!")
    end
  end

end
