class Company < ApplicationRecord
    has_one :timeline, foreign_key: :company_name
end
