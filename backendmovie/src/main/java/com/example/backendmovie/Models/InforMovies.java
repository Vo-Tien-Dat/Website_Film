package com.example.backendmovie.Models;

import javax.persistence.*;

@Entity
@Table(name = "INFORFILM")
public class InforMovies {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)


    @Column(name = "idinfor")
    private String idinfor;

    @Column(name = "year")
    private String year;

    @Column(name = "director")
    private String director;

    @Column(name = "actor")
    private String actor;

    @Column(name = "id")
    private String id;

    @Column(name = "description")
    private String description;

    @Column(name = "country")
    private String country;

    @Column(name = "urlimage")
    private String urlimage;

    public String getYear(){
        return this.year.trim();
    }

    public String getIdinfor(){
        return this.idinfor.trim();
    }

    public  String getDirector(){
        return this.director.trim();
    }

    public String getActor(){
        return this.actor.trim();
    }

    public String getId()
    {
        return this.id.trim();
    }

    public String getDescription(){
        return this.description.trim();
    }

    public String getCountry(){
        return this.country;
    }

    public String getUrlimage(){
        return this.urlimage;
    }
    public void setYear(String year){
        this.year = year;
    }

    public void setIdinfor(String idinfor){
        this.idinfor = idinfor;
    }

    public void setId(String id){
        this.id = id;
    }

    public void setDirector(String director){
        this.director = director;
    }

    public void setActor(String actor){
        this.actor = actor;
    }

    public void setDescription(String description){
        this.description = description;
    }

    public void setCountry(String country){
        this.country = country;
    }

    public void setUrlimage(String urlimage){
        this.urlimage = urlimage;
    }
}
