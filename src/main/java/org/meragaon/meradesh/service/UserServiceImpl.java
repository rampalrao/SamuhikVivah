package org.meragaon.meradesh.service;

import org.meragaon.meradesh.dao.UserDao;
import org.meragaon.meradesh.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by rampal.rao on 18/5/17.
 */
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;

    @Override
    @Transactional
    public void addUser(User user) {
        userDao.addUser(user);
    }

    @Override
    @Transactional
    public List<User> getAllUsers() {
        return userDao.getAllUsers();
    }

    @Override
    @Transactional
    public void deleteUser(long id) {
         userDao.deleteUser(id);
    }

    @Override
    @Transactional
    public int getTotalRegistrationCount() {
        return getAllUsers().size();
    }
}
