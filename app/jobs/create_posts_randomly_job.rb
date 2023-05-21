class CreatePostsRandomlyJob < ApplicationJob

  def perform(amount_of_posts)
    amount_of_posts.times.each do
      Post.create(title: amount_of_posts, content: randon_content)
    end
  end

  private

    def random_title
      (0..3).map { random_word }
    end

    def randon_content
      (0..30).map { random_word }
    end

    def random_word
      (0...16).map { (65 + rand(26)).chr }.join + (0...8).map { (65 + rand(26)).chr }.join
    end
end
