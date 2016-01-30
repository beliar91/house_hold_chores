class Task < ActiveRecord::Base


  validates :status, inclusion: {in: ["Created", "In Progress", "Completed"]}
  scope :tasks_by_status, -> (status) {where(status: status)}
  after_create :count_average_execution_time

  belongs_to :house_hold




  def count_average_execution_time
      tasks = Task.tasks_by_status(self.status)

      sum = 0
      tasks.each do |task|
        sum+= task.completion_time
      end
      number_of_tasks = Task.tasks_by_status(self.status).count
      average = sum / number_of_tasks
      p "Average execution time for task with status: #{self.status} is " << average.to_s
      self.avg_completion_time = average
  end



end
