class Message < ApplicationRecord
  belongs_to :person

  validates :message, presence: {message: 'を書いて下さい。'}
end
