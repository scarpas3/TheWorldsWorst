class Timeline < ApplicationRecord
    belongs_to :company, :primary_key => name
end
