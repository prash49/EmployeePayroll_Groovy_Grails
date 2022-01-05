package com.bridgelab

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class EmployeeController {

    EmployeeService employeeService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"  ]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond employeeService.list(params), model:[employeeCount: employeeService.count()]
    }

    def show(Long id) {
        respond employeeService.get(id)
    }

    def create() {
        respond new Employee(params)
    }

    def save(Employee employee) {
        if (employee == null) {
            notFound()
            return
        }
        try {
            employeeService.save(employee)

        } catch (ValidationException e) {
            respond employee.errors, view:'create'
            return
        }

        redirect(controller: "employee", action: "")

    }

    def edit(Long id) {
        respond employeeService.get(id)
    }

    def update(Employee employee) {
        if (employee == null) {
            notFound()
            return
        }

        try {
            employeeService.save(employee)
        } catch (ValidationException e) {
            respond employee.errors, view:'edit'
            return
        }
        redirect(controller: "employee", action: "")
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        try {
            employeeService.delete(id)

        } catch (ValidationException e) {
            respond employee.errors, view:""
            return
        }

        redirect(controller: "employee", action: "")

    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'employee.label', default: 'Employee'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
