class Book < ApplicationRecord
    # バリデーションチェック
    validates :title, presence: true
    validates :body, presence: true
  
end
