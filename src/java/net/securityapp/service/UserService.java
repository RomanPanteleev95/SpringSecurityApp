package net.securityapp.service;

import net.securityapp.model.User;

/**
 * Created by pante on 20.06.2018.
 */
public interface UserService {
    void save(User user);
    User findByUserName(String userName);

}
