require 'rails_helper'

RSpec.describe Post, type: :model do
	let(:post) do
  	Post.new(title: 'Titulo ok', content: 'Conteudo ok')
	end

  it 'is invalid without a post title and content' do
    post = Post.new(title: nil, content: nil)
    expect(post).not_to be_valid
  end

  it 'is invalid without a title' do
  	post.title = nil
  	expect(post).to_not be_valid
	end

	it 'is invalid without a content' do
  	post.content = nil
  	expect(post).to_not be_valid
	end


	it 'is valid' do
	  expect(post).to be_valid
	end


end
