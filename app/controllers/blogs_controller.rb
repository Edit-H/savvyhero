class BlogsController < ApplicationController
    def show
        @blogs = Blog.all
    end
end
