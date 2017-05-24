package org.meragaon.meradesh.service;

import org.meragaon.meradesh.entity.User;

import java.util.List;

/**
 * Created by rampal.rao on 18/5/17.
 */
public interface UserService {
    void addUser(User student);

    List<User> getAllUsers();
}
