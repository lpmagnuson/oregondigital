module BulkIngest
  class Validation
    @queue = :ingest
    def self.perform(task_id)
      task = BulkTask.find(task_id)
      task.validate_metadata
      task.save
    end
  end
end
