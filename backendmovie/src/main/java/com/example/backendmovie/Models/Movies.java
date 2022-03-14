package com.example.backendmovie.Models;


import javax.persistence.Entity;
import javax.persistence.*;

@Entity
@Table(name = "MOVIES")
public class Movies {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private String id;

    @Column(name = "name")
    private String name;

    @Column(name = "type")
    private String type;

    @Column(name = "router")
    private String router;

    @Column(name = "urlimage")
    private String urlimage;

    public String getId(){
        return this.id.trim();
    }

    public String getName(){
        return this.name.trim();
    }

    public String getType(){
        return this.type.trim();
    }

    public String getRouter(){ return this.router.trim(); }

    public String getUrlimage(){
        return this.urlimage.trim();
    }

    public void setId(String id){
        this.id = id;
    }

    public void setName(String name){
        this.name = name;
    }

    public void setType(String type){
        this.type = type;
    }

    public void setRouter(String router){ this.router = router; }

    public void setUrlimage(String urlimage){
        this.urlimage = urlimage;
    }

}
