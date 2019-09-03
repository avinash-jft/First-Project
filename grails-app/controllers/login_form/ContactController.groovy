package login_form

class ContactController {

    def index() { redirect action: "list" }
    def create(){
        render view: 'create'
    }
    def edit() {
        def contact = Contact.get(params.id)
        [contact: contact]
    }
    def show() {

        def contacts = Contact.findAllByStatus(true);
        [contacts: contacts]
    }
    def update() {
        def contact = Contact.get(params.id)
        contact.properties = params
        contact.save flush: true, failOnError: true
        redirect action: "show", id: params.id
    }
    def delete() {
        def contact = Contact.get(params.id)
        contact.setStatus(false)
        contact.save(flush: true, failOnError: true)
        redirect action: "show"
    }
    def save() {
        def contact = new Contact (params )

        contact.save flush: true ,failOnError:true
        redirect action: 'show'
    }
    def list() {
        def contacts = Contact.list()
        [contacts: contacts]
    }



}
