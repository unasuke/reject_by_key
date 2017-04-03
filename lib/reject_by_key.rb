require "reject_by_key/version"

class Hash
  def reject_by_key(key)
    self.reject do |k, v|
      k == key
    end
  end
end
