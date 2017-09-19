class Foobar

  def self.baz(a)
    # Class method
    # Call with `Foobar.baz`
    b = a.map { |i| i.to_i + 2 }
    b.map do |e|
        if e % 2 != 0
            b.delete(e)
        end
    end
    b.map do |f|
        if f > 10
            b.delete(f)
        end
    end
    b = b.uniq
    b.inject(0) {|sum, i| sum + i}
  end
end


