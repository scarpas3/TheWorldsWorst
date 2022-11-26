class Submission < ApplicationRecord
    def approve(smid)
        sm = Submission.find_by(id: smid)
        company = Company.create!(name: sm.name, country: sm.country, industry: sm.industry, country: sm.country)
        sm.destroy
    end
end
