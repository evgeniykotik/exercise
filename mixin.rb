module AcceptsComments
  def comments
    #Возвращает либо значение по умолчанию для @comments, либо текущее значение
    @comments ||= []
  end
  def add_comment(comment)
    #Вызываем метод "сomments" для получения массива из "@comments" для присоединения комментария
    comments<<comment
  end
end
class Clip
  def play
    #Выводим идентификатор воспроизводимого объекта.
    puts "Playing #{object_id}"
  end
end
class Video<Clip
  include AcceptsComments
  attr_accessor :resolution
end
class Song<Clip
  include AcceptsComments
  attr_accessor :beats_per_minute
end
class Photo
  include AcceptsComments
  def initialize
    @format="JPEG "
  end
end
video = Video.new
video.add_comment("Cool slow motion effect!")
video.add_comment("Weird ending.")
song = Song.new
song.add_comment("Awesome beat.")
photo=Photo.new
photo.show
p video.comments, song.comments