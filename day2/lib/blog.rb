#lib/blog.rb

class Blog
	def initialize
		@posts = []
		@page_start = 0
		@page_end = 2
	end

	def add_post (post)
		@posts.push(post)
	end

	def show_post
		@posts.sort! {|a,b| b.date <=> a.date}
		@posts.each do |x|
			x.print_post
		end
	end

	def go_next
		@page_start += 3
		@page_end += 3
	end

	def go_prev
		@page_start -= 3
		@page_end -= 3
	end

	def print_current
		current_posts = @posts[@page_start..@page_end]
		current_posts.each do |x|
			x.print_post
		end
	end

		
end