package net.securityapp.service;

import net.securityapp.model.User;

public interface UserService {

    void save(User user);

    User findByUsername(String username);
}