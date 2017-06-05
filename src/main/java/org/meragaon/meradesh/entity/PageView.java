package org.meragaon.meradesh.entity;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by rampal.rao on 5/6/17.
 */
@Entity
@Table(name = "pageview")
public class PageView implements Serializable {
    @Id
    @GeneratedValue
    @Column(name = "ID")
    private Long id;

    @Column(name = "COUNT")
    private int count;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }
}
