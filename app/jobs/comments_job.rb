class CreateCommentsRandomlyJob < ApplicationJob

  def perform(amount_of_comments, post=nil)
    amount_of_comments.times.each do
      Comment.create(post: post || random_post, content: randon_content)
    end
  end

  private

    def random_post
      Post.order('RANDOM()').first
    end

    def randon_content
      (0..30).map { random_word }
    end

    def random_word
      (0...16).map { (65 + rand(26)).chr }.join + (0...8).map { (65 + rand(26)).chr }.join
    end
end