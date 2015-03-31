require 'test_helper'

module Blogy
  class Post::TranslationTest < ActiveSupport::TestCase
    let(:translation) { build_stubbed(:post_translation) }

    it "is valid" do
      translation.must_be :valid?
    end

    it "decide which format to use" do
      plain = build_stubbed(:post_translation, format: :plain)
      plain.expects(:value)
      plain.formated

      html = build_stubbed(:post_translation, format: :html)
      html.expects(:value)
      html.formated

      markdown = build_stubbed(:post_translation, format: :markdown)
      markdown.expects(:markdown)
      markdown.formated
    end

    it "show up text, when text is selected" do
      translation.value.must_equal translation.text
    end
  end
end
