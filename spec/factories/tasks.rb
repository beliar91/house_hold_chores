FactoryGirl.define do

  factory :task do |t|
    t.completion_time 10
    name "Test"
    status "Created"

    trait :created do
      status "Created"
    end

    trait :in_progress do
      status "In Progress"
    end

    trait :completed do
      status "Completed"
    end


    factory :task_created_1 do |t|
      t.status "Created"
      t.completion_time 90
    end

    factory :task_created_2 do |t|
      t.status "Created"
      t.completion_time 20
    end

    factory :task_in_progress_1 do |t|
      t.status "In Progress"
      t.completion_time 30
    end


    factory :task_in_progress_2 do |t|
      t.status "In Progress"
      t.completion_time 60
    end

    #define factories with different traits here
    factory :task_created_3, traits: [:created]

  end


end
