module Job::Ransackable
  extend ActiveSupport::Concern

  class_methods do
    def ransackable_attributes(auth_object = nil)
      ["category", "description", "title"]
    end

    def ransackable_associations(auth_object = nil)
      []
    end
  end
end
