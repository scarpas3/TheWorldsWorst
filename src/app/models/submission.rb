class Submission < ApplicationRecord
    def approve
        company = Company.create!(name: self.name, country: self.country, industry: self.industry, country: self.country)
        self.destroy
    end
end
