class User < ApplicationRecord
  belongs_to :company, counter_cache: true 
  # DEFAULT Column: users_count
  # belongs_to :company, counter_cache: :users_size 
end
