package login_form

class UserController {

    def index() { }
    def login(){
        if(params.user=="admin" && params.pass=="avinash")
        {
            flash.message="login sucessful"
        }
        else
        {
            flash.message="login failed"
        }
          redirect(action: 'index')
    }
}
