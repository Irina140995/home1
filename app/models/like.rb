class Like < ApplicationRecord
    
  belongs_to :article
  belongs_to :user

  validates :user_id, uniqueness: { scope: :article_id, message: 'like exists' }

end
