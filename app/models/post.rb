class Post < ApplicationRecord
  searcher = PostsSearcher.source(self)
  searcher.title = :title
  searcher.body = ->(model) {
    model.body.gsub(/<.*?>/, "")
  }
  searcher.updated_at = true
end
