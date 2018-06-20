package net.securityapp.dao;

import net.securityapp.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by pante on 20.06.2018.
 */
public interface UserDao extends JpaRepository<User, Long> {
    User findByUserName(String userName);
}
