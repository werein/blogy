include ActionDispatch::TestProcess

FactoryGirl.define do
  factory :post, class: Blogy::Post do
    published true
    draft false
    ilustration nil
  end
end