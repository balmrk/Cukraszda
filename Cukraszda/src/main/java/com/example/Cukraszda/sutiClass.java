package com.example.Cukraszda;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="suti")
public class sutiClass {
    @Id
    private int id;
    @Column(name="nev")
    private String nev;
    @Column(name="tipus")
    private String tipus;
    @Column(name="dijazott")
    private boolean dijazott;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNev() {
        return nev;
    }

    public void setNev(String nev) {
        this.nev = nev;
    }

    public String getTipus() {
        return tipus;
    }

    public void setTipus(String tipus) {
        this.tipus = tipus;
    }

    public boolean isDijazott() {
        return dijazott;
    }

    public void setDijazott(boolean dijazott) {
        this.dijazott = dijazott;
    }

    public sutiClass(int id, String nev, String tipus, boolean dijazott) {
        this.id = id;
        this.nev = nev;
        this.tipus = tipus;
        this.dijazott = dijazott;
    }
}
