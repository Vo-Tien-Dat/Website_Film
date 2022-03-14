package com.example.backendmovie.Services;
import com.example.backendmovie.Models.InforMovies;
import com.example.backendmovie.Models.Movies;
import com.example.backendmovie.Models.VideoMovies;

import com.example.backendmovie.Repository.movieRepository;
import com.example.backendmovie.Repository.informoviesRepostitory;
import com.example.backendmovie.Repository.videomoviesRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
@Service
public class movieServices {
    @Autowired
    private movieRepository movierespository;

    @Autowired
    private informoviesRepostitory informoviesrepository;

    @Autowired
    private videomoviesRepository videomoviesrepository;

    private InforMovies informovies;

    public List<Movies> getListMovie(){
        return movierespository.findAll();
    }

    public Movies getMovies(String id){
        return movierespository.findMoviesById(id);
    }

    // lay danh sach kieu phim
    public ArrayList<Movies> getListType(String type){
        return movierespository.findMoviesByType(type);
    }

    // lay thong tin 1 bo phim
    public InforMovies getObjectInforMovies(String id){
        return informoviesrepository.findInformoviesById(id);
    }

    // lay danh sach cac tap phim theo id
    public List<VideoMovies> getListVideoMovies(String id){

        return videomoviesrepository.findVideomoviesById(id);
    }

    public VideoMovies getVideoMovies(String idvideo){
        return videomoviesrepository.findVideomoviesByIdvideo(idvideo);
    }
}
