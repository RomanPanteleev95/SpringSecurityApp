package net.securityapp.service;

/**
 * Created by pante on 20.06.2018.
 */
public interface SecurityService {

    String findLoggedInUsername();

    void autoLogin(String username, String password);
}