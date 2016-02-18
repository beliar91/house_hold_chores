class Task < ActiveRecord::Base

  #validations:
  validates :status, inclusion: {in: ["Created", "In Progress", "Completed"]}
  validates :name, presence: true, uniqueness: true
  validates :completion_time, presence: true

  #scopes:
  scope :by_status, -> (status) {where(status: status)}

  #associations:
  belongs_to :house_hold


  def self.count_average_execution_time(status)
    sum_of_tasks_by_status = Task.by_status(status).inject(0) {|sum, task| sum += task.completion_time }
    number_of_tasks = Task.by_status(status).count
    average = sum_of_tasks_by_status / number_of_tasks
    p "Average execution time for tasks with status: #{status} is " << average.to_s
    average
  end



end
