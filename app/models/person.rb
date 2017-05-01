class Person < ApplicationRecord
  has_many :message

  validates :name, presence: {message: 'は、必須項目です。'}
  validates :age, numericality: {message: 'は、数字で入力して下さい。'}
  validates :mail, email: {message: 'はメールアドレスではありません。'}
end
