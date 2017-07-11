class Hash
  def keys_of(arguments, *additional)
    array = []
    args = []
    if additional.empty?
      args << arguments
    else
      additional << arguments
      args << additional
      args = args.flatten
      ##binding.pry
    end
    additional << arguments
    ##binding.pry
    args.each do |id|
    self.each do |key, value|
    ##  binding.pry
      if value == id
        array << key
      end
    end
  end
    array
  end
end
