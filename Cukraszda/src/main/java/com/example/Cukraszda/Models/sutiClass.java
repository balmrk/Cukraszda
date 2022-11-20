package com.example.Cukraszda.Models;

import javax.persistence.*;
import java.util.List;

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

    @OneToOne
    @JoinColumn(name = "id", referencedColumnName = "sutiid", insertable = false, updatable = false)
    private arClass ar;

    @OneToOne
    @JoinColumn(name = "id", referencedColumnName = "sutiid", insertable = false, updatable = false)
    private tartalomClass tartalom;

    public tartalomClass getTartalom() {
        return tartalom;
    }

    public void setTartalom(tartalomClass tartalom) {
        this.tartalom = tartalom;
    }

    public arClass getAr() {
        return ar;
    }

    public void setAr(arClass ar) {
        this.ar = ar;
    }

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


}
