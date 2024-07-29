# config/initializers/active_storage.rb

Rails.application.config.after_initialize do
    class ActiveStorage::Attachment
      def self.ransackable_attributes(auth_object = nil)
        ["blob_id", "created_at", "id", "name", "record_id", "record_type"]
      end
    end
  end
  