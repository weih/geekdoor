FactoryGirl.define do
  factory :geekdoor do
    sequence(:name){|n| "Geekdoor_#{n}" }
    url 'http://www.baidu.com/s?wd=%s&rsv_bp=0&rsv_spt=3&inputT=316'
    sequence(:hotkey) {|n| "#{n}"}
  end
end