module Jekyll
  class Post
    alias_method :original_init, :initialize
    def initialize(site, source, dir, name)
      original_init(site, source, dir, name)
      self.data['date'] ||= Time.now
    end
  end
end
