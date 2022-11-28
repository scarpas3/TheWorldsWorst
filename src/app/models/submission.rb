class Submission < ApplicationRecord
    def approve #new company gets all the data of the submission; submission is then deleted
        company = Company.create!(name: self.name, description: self.description, industry: self.industry, country: self.country)
        self.destroy
    end
end
