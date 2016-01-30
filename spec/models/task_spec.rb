require 'rails_helper'


RSpec.describe Task, type: :model do

  let(:task) {FactoryGirl.create(:task)}
  let(:task_created_1) {FactoryGirl.create(:task_created_1)}
  let(:task_created_2) {FactoryGirl.create(:task_created_2)}
  let(:task_in_progress_1) {FactoryGirl.create(:task_in_progress_1)}
  let(:task_in_progress_2) {FactoryGirl.create(:task_in_progress_2)}

  pending "This test needs to be better" do

  it "Counting average execution time should return proper results" do
    task.count_average_execution_time
    task_created_1.count_average_execution_time
    task_in_progress_2.count_average_execution_time
    expect(task_created_2.count_average_execution_time).to eq(40)
    expect(task_in_progress_1.count_average_execution_time).to eq(45)
  end
  end

  


  it "A valid Task should be saved" do
    task.save
    expect(task.save).to eq(true)
  end

end
