package org.meragaon.meradesh.dao;

import org.hibernate.SessionFactory;
import org.meragaon.meradesh.entity.PageView;
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

    @Override
    public void deleteUser(long id) {
        User user=new User();
        user.setUserId(id);
        this.sessionFactory.getCurrentSession().delete(user);
    }

    @Override
    public int getPageViewCount() {
        List<PageView> pageViews = this.sessionFactory.getCurrentSession().createQuery("from PageView").list();
        if (pageViews != null && !pageViews.isEmpty()) {
            PageView pageView = pageViews.get(0);
            return pageView.getCount();
        } else {
            return 0;
        }
    }
}
