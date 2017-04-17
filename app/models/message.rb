class Message < ApplicationRecord
  validates :message, presence: {message: 'を書いて下さい。'}
end
