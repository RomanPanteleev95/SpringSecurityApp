package net.securityapp.service;

/**
 * Created by pante on 20.06.2018.
 */
public interface SecurityService {
    String findLoggedInUserName();

    void autoLogin(String userName, String password);
}
