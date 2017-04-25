package repository;

import model.User;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by admin on 10.04.2017.
 */
public interface UserRepository extends JpaRepository<User, Long> {

    User findOneByEmail(String email);
}
