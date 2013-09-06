EmployeeTimesheetMysql::Application.routes.draw do
  root :to => 'sessions#index'
  resources :sessions
  resources :timesheets do
    collection do
        get 'date_timesheet'
     end
  end
  resources :users
  resources :approvals
  resources :rejects
  resources :statuses
end
