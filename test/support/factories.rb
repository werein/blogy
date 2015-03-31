include ActionDispatch::TestProcess

FactoryGirl.define do
  factory :post, class: Blogy::Post do
    published true
    draft false
    ilustration nil
  end

  factory :post_translation, class: Blogy::Post::Translation do
    locale :en
    title 'Ruby on Rails'
    text 'Is framework in Ruby'
    format :html
    storage :text
  end
end