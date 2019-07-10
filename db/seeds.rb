Department.create!(name: "Teachers", manager: "Jay Wengrow", code: "TCH")
Department.create!(name: "Counselors", manager: "Jay Wengrow", code: "CC")

Employee.create!(first_name: "Peter", last_name: "Jang", phone: "911", email: "peter@email.com", job_title: "Code Master", department_id: 1)
Employee.create!(first_name: "Lisa", last_name: "Tucker", phone: "311", email: "lisa@email.com", job_title: "Life Coach", department_id: 2)
Employee.create!(first_name: "Bill", last_name: "Gates", phone: "411", email: "bill@email.com", job_title: "Billionaire", department_id: 2)
