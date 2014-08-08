class CD

  attr_reader :artist,:album

  @@collection =[]

  def initialize(attributes)
    @artist = attributes[:artist]
    @album =  attributes[:album]
  end

  def add_cd
    @@collection << self
  end

  def CD.all
    @@collection
  end
end
