package org.meragaon.meradesh.dao;

import org.hibernate.SessionFactory;
import org.meragaon.meradesh.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by rampal.rao on 18/5/17.
 */
@Repository
public class UserDaoImpl implements UserDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<User> getAllUsers() {
        return this.sessionFactory.getCurrentSession().createQuery("from User").list();
    }

    @Override
    public void addUser(User user) {
        this.sessionFactory.getCurrentSession().save(user);
    }
}
