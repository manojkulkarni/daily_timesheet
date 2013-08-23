EmployeeTimesheetMysql::Application.routes.draw do
  root :to => 'sessions#index'
  resources :sessions
  resources :timesheets
end
