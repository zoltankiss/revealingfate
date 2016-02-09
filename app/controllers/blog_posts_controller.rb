class BlogPostsController < ApplicationController
  POSTS = {
    'outlook_for_fire_monkey_2016' => 'blog_posts/post_2',
    'what_does_a_four_pillars_reading_mean_to_you' => 'blog_posts/post_1'
  }

  def show
    unless POSTS.keys.include?(params[:post_name])
      @post_not_found = true
      render 'index'
      return
    end
    @partial = POSTS[params[:post_name]]
    @do_not_render_title_as_link = true
  end
end