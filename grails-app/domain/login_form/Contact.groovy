package login_form

class Contact {
    String name
    String phonenumber
    boolean status=true;

    static constraints = {
        name nullable: false


    }

    @Override
    String toString() {
        return "name : $name, Phonenumber : $phonenumber"
    }
}
