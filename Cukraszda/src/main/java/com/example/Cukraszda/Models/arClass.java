package com.example.Cukraszda.Models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ar")
public class arClass {
    @Id
    private int id;
    @Column(name="sutiid")
    private int sutiid;
    @Column(name="ertek")
    private int ertek;
    @Column(name="egyseg")
    private String egyseg;

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

    public int getErtek() {
        return ertek;
    }

    public void setErtek(int ertek) {
        this.ertek = ertek;
    }

    public String getEgyseg() {
        return egyseg;
    }

    public void setEgyseg(String egyseg) {
        this.egyseg = egyseg;
    }

    public arClass(int id, int sutiid, int ertek, String egyseg) {
        this.id = id;
        this.sutiid = sutiid;
        this.ertek = ertek;
        this.egyseg = egyseg;
    }
}
