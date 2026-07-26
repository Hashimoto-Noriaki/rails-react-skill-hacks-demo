class Api::V1::TasksController < ApplicationController
  # 1. 全てのタスクを取得する
  # 2. タスクをステータスごとに表示する
  ## GET /api/v1/tasks
  # タスクの一覧を、statusごとに分類したJSONで返す。
  def index
    all_tasks = Task.all
    pending_tasks = all_tasks.select { |task| task[:status] == "pending" }
    in_progress_tasks = all_tasks.select { |task| task[:status] == "in_progress" }
    completed_tasks = all_tasks.select { |task| task[:status] == "completed" }
    render json: { pending: pending_tasks, in_progress: in_progress_tasks, completed: completed_tasks }
  end
end
