package com.example.backendmovie.Models;

import javax.persistence.*;

@Entity
@Table(name = "VIDEOFILM")
public class VideoMovies {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idvideo")
    private String idvideo;

    @Column(name = "urlvideo")
    private String urlvideo;

    @Column(name = "id")
    private String id;

    @Column(name = "episode")
    private String episode;


    @Column(name = "routervideo")
    private String routervideo;

    public String getId(){
        return this.id.trim();
    }

    public String getIdvideo(){
        return this.idvideo.trim();
    }

    public String getUrlvideo(){
        return this.urlvideo.trim();
    }

    public String getEpisode(){
        return this.episode.trim();
    }

    public String getRoutervideo(){
        if(this.routervideo == null)    return "";
        return this.routervideo.trim();
    }

    public void setId(String id){
        this.id = id;
    }

    public void setIdvideo(String idvideo){
        this.idvideo = idvideo;
    }

    public void setUrlvideo(String urlvideo){
        this.urlvideo = urlvideo;
    }

    public void setEpisode(String episode){
        this.episode = episode;
    }

    public void setRoutervideo(String routervideo){
        this.routervideo = routervideo;
    }
}
