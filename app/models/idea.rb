class Idea < ApplicationRecord
  validates :name, presence: true, length: 10..50

  validates :foo, numericality: { only_integer: true }

  mount_uploader :picture, PictureUploader
end

class Foo < ApplicationRecord
  validates :name, presence: true
  validates :age, numericality: { only_integer: true }

  before_save :check_if_can_drink

  def check_if_can_drink
    self.can_drink = age >= 18
  end
end

foo = Foo.new(name: 'A', age: 10)
foo.save
