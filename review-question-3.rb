# begin to build a simple program that models Instagram
# you should have a User class, a Photo class and a comment class

require 'pry'

class Photo

    attr_reader
    attr_accessor :user, :comments

    @@all = []

    def initialize

        @comments = []
        Photo.all << self
        
    end

    def self.all

        @@all

    end

    def user=(user)

        user.photos << self
        @user = user
        
    end

    def make_comment(comment)

        @comments << Comment.new(comment)
        
    end
    
end

class User

    attr_reader :name
    attr_accessor :photos

    @@all = []

    def initialize(name)

        @name = name
        @photos = []
        User.all << self
        
    end

    def self.all

        @@all

    end
    
end

class Comment

    attr_reader :comment
    attr_accessor

    @@all = []

    def initialize(comment)

        @comment = comment
        Comment.all << self
        
    end

    def self.all

        @@all

    end
    
end

sandwich_photo = Photo.new
sophie = User.new("Sophie")

sandwich_photo.user = sophie
sandwich_photo.user.name
# => "Sophie"
sophie.photos
# => [#<Photo:0x00007fae2880b370>]


sandwich_photo.comments
# => []

sandwich_photo.make_comment("this is such a beautiful photo of your lunch!! I love photos of other people's lunch")
sandwich_photo.make_comment("THIS IS A NEW COMMENT")
sandwich_photo.comments
# => [#<Comment:0x00007fae28043700>]

Comment.all
#=> [#<Comment:0x00007fae28043700>]

binding.pry
puts "--------------------------"