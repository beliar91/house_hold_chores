require 'rails_helper'


RSpec.describe Task, type: :model do

  let(:task_created_3) {FactoryGirl.create(:task_created_3)}
  let(:task_created_1) {FactoryGirl.create(:task_created_1)}
  let(:task_created_2) {FactoryGirl.create(:task_created_2)}
  let(:task_in_progress_1) {FactoryGirl.create(:task_in_progress_1)}
  let(:task_in_progress_2) {FactoryGirl.create(:task_in_progress_2)}



  it "Counting average execution time should return proper results" do
    task_1 = Task.create(name: "ABCD", status: "Created", completion_time:30)
    task_2 = Task.create(name: "ABCDE", status: "Created", completion_time: 70)

    sum_of_completion_time = task_1.completion_time + task_2.completion_time
    number_of_tasks = Task.all.count

    average_execution_time = sum_of_completion_time / number_of_tasks

    expect(average_execution_time).to eq(task_2.count_average_execution_time)

  end
  

  it "Task name cannot be blank" do
    task1 = Task.new()
    expect(task1.save).to eq(false)
    expect(task1.errors.messages[:name]).to eq(["can't be blank"])
  end

  it "Two tasks cannot have identical names" do
    task1 = Task.create(name: "ABC", completion_time: 10, status: "Created")
    task2 = Task.new(name: "ABC", completion_time: 10, status: "Created")
    expect(task2.save).to eq(false)
    expect(task2.errors.messages[:name]).to eq(["has already been taken"])
  end


  it "A valid Task should be saved" do
    task_created_3.save
    expect( task_created_3.save).to eq(true)
  end

end
