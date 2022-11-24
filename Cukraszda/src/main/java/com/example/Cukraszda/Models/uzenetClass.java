package com.example.Cukraszda.Models;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name="uzenetek")
public class uzenetClass {
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Integer id;
    @Column(name="sender")
    private String sender;
    @Column(name="content")
    //@NotEmpty(message = "Üres üzenetet nem lehet küldeni!")
    //@Size(min = 10, message = "Az üzenet túl rövid. (Min: 10 karakter)")
    //@Size(max = 255, message = "Az üzenet túl hosszú. (Max: 255 karakter)")
    private String content;
    @Column(name="kuldes_ideje")
    private String kuldes_ideje;

    public String getKuldes_ideje() {
        return kuldes_ideje;
    }

    public void setKuldes_ideje(String kuldes_ideje) {
        this.kuldes_ideje = kuldes_ideje;
    }


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSender() {
        return sender;
    }

    public void setSender(String sender) {
        this.sender = sender;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
    //URES CONSTRUCTOR?????

    public uzenetClass() {
    }
}
