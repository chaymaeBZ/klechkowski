require 'test_helper'

class ArticlesTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "article should be valid" do
  	@article = Article.new(content:"",title:"")
  	assert_not @article.valid?
  end
end
