class Contact < ApplicationRecord
    def self.ransackable_attributes(auth_object = nil)
        ["candidate_name", "college", "course_interest", "created_at", "email_id", "father_name", "id", "id_value", "phone_number", "query", "updated_at"]
    end
end
