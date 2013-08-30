EmployeeTimesheetMysql::Application.routes.draw do
  root :to => 'sessions#index'
  resources :sessions
  resources :timesheets
  resources :users
  resources :approvals
  resources :rejects
end
