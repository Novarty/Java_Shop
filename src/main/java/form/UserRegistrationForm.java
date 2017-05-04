package form;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

import javax.validation.constraints.Size;

public class UserRegistrationForm {

    @NotEmpty(message = "Поле обязательно к заполнению")
    private String name;
    @Email
    @NotEmpty(message = "Поле обязательно к заполнению")
    private String email;

    @Size(min = 6, max = 24, message = "Пароль неверной длины")
    private String password;

    @Size(min = 6, max = 24, message = "Пароль неверной длины")
    private String repassword;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRepassword() {
        return repassword;
    }

    public void setRepassword(String repassword) {
        this.repassword = repassword;
    }
}
