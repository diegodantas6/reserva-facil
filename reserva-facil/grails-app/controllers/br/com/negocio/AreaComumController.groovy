package br.com.negocio



import static org.springframework.http.HttpStatus.*
import grails.plugin.springsecurity.annotation.Secured
import grails.transaction.Transactional


@Secured("IS_AUTHENTICATED_ANONYMOUSLY")
@Transactional(readOnly = true)
class AreaComumController {

//    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
//        params.max = Math.min(max ?: 10, 100)
//        respond AreaComum.list(params), model:[areaComumInstanceCount: AreaComum.count()]
    }

    def show(AreaComum areaComumInstance) {
        respond areaComumInstance
    }

    def create() {
        respond new AreaComum(params)
    }

    @Transactional
    def save(AreaComum areaComumInstance) {
		
		println "asdasd"
		
        if (areaComumInstance == null) {
            notFound()
            return
        }

        if (areaComumInstance.hasErrors()) {
            respond areaComumInstance.errors, view:'create'
            return
        }

        areaComumInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'areaComum.label', default: 'AreaComum'), areaComumInstance.id])
                redirect areaComumInstance
            }
            '*' { respond areaComumInstance, [status: CREATED] }
        }
    }

    def edit(AreaComum areaComumInstance) {
        respond areaComumInstance
    }

    @Transactional
    def update(AreaComum areaComumInstance) {
        if (areaComumInstance == null) {
            notFound()
            return
        }

        if (areaComumInstance.hasErrors()) {
            respond areaComumInstance.errors, view:'edit'
            return
        }

        areaComumInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'AreaComum.label', default: 'AreaComum'), areaComumInstance.id])
                redirect areaComumInstance
            }
            '*'{ respond areaComumInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(AreaComum areaComumInstance) {

        if (areaComumInstance == null) {
            notFound()
            return
        }

        areaComumInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'AreaComum.label', default: 'AreaComum'), areaComumInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'areaComum.label', default: 'AreaComum'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
