package com.example.Cukraszda.Models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tartalom")
public class tartalomClass {
    @Id
    private int id;
    @Column(name="sutiid")
    private int sutiid;
    @Column(name="mentes")
    private String mentes;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getSutiid() {
        return sutiid;
    }

    public void setSutiid(int sutiid) {
        this.sutiid = sutiid;
    }

    public String getMentes() {
        return mentes;
    }

    public void setMentes(String mentes) {
        this.mentes = mentes;
    }

    public tartalomClass(int id, int sutiid, String mentes) {
        this.id = id;
        this.sutiid = sutiid;
        this.mentes = mentes;
    }
}
