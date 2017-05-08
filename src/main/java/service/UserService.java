package service;

import form.UserRegistrationForm;
import model.User;

import java.util.List;

/**
 * Created by admin on 10.04.2017.
 */
public interface UserService {
    void saveNewUser(UserRegistrationForm form);
    void updateUser(User user);
    List<User> getAllUsers();
    User findOneById(Integer id);
    void delete(User user);
}
