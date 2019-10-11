class User

    attr_accessor :name, :photos

    @@all = []

    def initialize(name)
        @name = name
        @photos = []
        @@all << self
    end

    def self.all
        @@all
    end

end

class Photo

    attr_reader :user

    @@all = []
    
    def initialize
        @@all << self
    end
    
    def user=(user)
        @user = user
        self.user.photos << self
    end

    def comments
        Comment.all.select{ |comment| comment.photo == self }
    end 

    def make_comment(message)
        Comment.new(message, self.user, self)
    end

end

class Comment

    attr_accessor :message, :user, :photo

    @@all = []

    def initialize(message, user, photo)
        @message = message
        @user = user
        @photo = photo
        @@all << self
    end

    def self.all
        @@all
    end

end