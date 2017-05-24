package org.meragaon.meradesh.dao;

import org.meragaon.meradesh.entity.User;

import java.util.List;

/**
 * Created by rampal.rao on 18/5/17.
 */
public interface UserDao {

    List<User> getAllUsers();

    void addUser(User user);
}
