require "stringex"
require "fileutils"

class Jekyll < Thor
  desc "new", "create a new post"
  method_option :editor, :default => "subl"
  def new(*title)
    if (title.empty?) 
      abort("You need to provide a title for the post")
    end
    
    title = title.join(" ")
    date = Time.now.strftime('%Y-%m-%d')
    FileUtils.mkdir_p "_posts/#{date}-#{title.to_url}"
    filename = "_posts/#{date}-#{title.to_url}/#{date}-#{title.to_url}.md"

    if File.exist?(filename)
      abort("#{filename} already exists!")
    end

    puts "Creating new post: #{filename}"
    open(filename, 'w') do |post|
      post.puts "---"
      post.puts "layout: post"
      post.puts "title: \"#{title.gsub(/&/,'&amp;')}\""
      post.puts "tags:"
      post.puts " -"
      post.puts "---"
    end

    system(options[:editor], filename)
  end
end