require 'rails_helper'


RSpec.describe Task, type: :model do

  let(:task_created_3) {FactoryGirl.create(:task_created_3)}
  let(:task_created_1) {FactoryGirl.create(:task_created_1)}
  let(:task_created_2) {FactoryGirl.create(:task_created_2)}
  let(:task_in_progress_1) {FactoryGirl.create(:task_in_progress_1)}
  let(:task_in_progress_2) {FactoryGirl.create(:task_in_progress_2)}

  pending "This test needs improvement" do

  it "Counting average execution time should return proper results" do
    task_created_3.count_average_execution_time
    task_created_1.count_average_execution_time
    task_in_progress_2.count_average_execution_time
    expect(task_created_2.count_average_execution_time).to eq(40)
    expect(task_in_progress_1.count_average_execution_time).to eq(45)
  end
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
