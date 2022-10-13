class Company < ApplicationRecord
    has_one :timeline, primary_key: :company_name
end
