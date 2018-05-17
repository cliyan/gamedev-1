require 'gosu'

def media_path(file)
    File.join(File.dirname(File.dirname(__FILE__)), 'media', file)
end

class Explosion
    FRAME_DELAY = 10
    SPRITE = media_path('explosion.png')

    def self.load_animation(window)
        Gosu::Image.load_tiles(
            window, SPRITE, 128, 128, false
        )
    end

    def self.load_sound(window)
        Gosu::Sample.new(
            window, media_path('explosions.mp3')
        )
    end

    def initiatlize(animation, sound, x, y)
        @animation = animation
        sound.play
        @x, @y = x, y
        @current_frame = 0
    end
end