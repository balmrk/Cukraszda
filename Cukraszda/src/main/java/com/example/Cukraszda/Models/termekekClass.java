package com.example.Cukraszda.Models;

public class termekekClass {
    private int id;
    private String nev;
    private String tipus;
    private boolean isDijazott;

    private int ar;
    private String egyseg;

    private String mentes;

    public termekekClass(int id, String nev, String tipus, boolean isDijazott, int ar, String egyseg, String mentes) {
        this.id = id;
        this.nev = nev;
        this.tipus = tipus;
        this.isDijazott = isDijazott;
        this.ar = ar;
        this.egyseg = egyseg;
        this.mentes = mentes;
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
        return isDijazott;
    }

    public void setDijazott(boolean dijazott) {
        isDijazott = dijazott;
    }

    public int getAr() {
        return ar;
    }

    public void setAr(int ar) {
        this.ar = ar;
    }

    public String getEgyseg() {
        return egyseg;
    }

    public void setEgyseg(String egyseg) {
        this.egyseg = egyseg;
    }

    public String getMentes() {
        return mentes;
    }

    public void setMentes(String mentes) {
        this.mentes = mentes;
    }
}
