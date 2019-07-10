class Api::EmployeesController < ApplicationController
  def index
    @employees = Employee.all
    render "index.json.jb"
  end

  def show
    @employee = Employee.find_by(id: params["id"])
    render "show.json.jb"
  end

  def create
    @employee = Employee.new(
      first_name: params["first_name"],
      last_name: params["last_name"],
      email: params["email"],
      phone: params["phone"],
      job_title: params["job_title"],
      department_id: params["department_id"],
    )
    @employee.save
    render "show.json.jb"
  end

  def update
    @employee = Employee.find_by(id: params["id"])
    @employee.first_name = params["first_name"] || @employee.first_name
    @employee.last_name = params["last_name"] || @employee.last_name
    @employee.email = params["email"] || @employee.email
    @employee.phone = params["phone"] || @employee.phone
    @employee.job_title = params["job_title"] || @employee.job_title
    @employee.department_id = params["department_id"] || @employee.department_id
    @employee.save
    render "show.json.jb"
  end

  def destroy
    @employee = Employee.find_by(id: params["id"])
    @employee.destroy
    render json: { message: "Employee was destroyed." }
  end
end
