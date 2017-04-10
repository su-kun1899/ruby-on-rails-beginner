class Person < ApplicationRecord
  validates :name, presence: {message: 'は、必須項目です。'}
  validates :age, numericality: {message: 'は、数字で入力して下さい。'}
end
