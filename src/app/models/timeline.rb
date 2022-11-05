class Timeline < ApplicationRecord
    belongs_to :company, foreign_key: name
end
