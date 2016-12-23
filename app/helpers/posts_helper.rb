module PostsHelper
  def extract_id(post)
    post["_key"].split("-")[1]
  end
end
