class Song < ActiveRecord::Base
  before_save :set_slug

  private

    def set_slug
      self.slug = title.parameterize
    end
end
