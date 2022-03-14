package com.example.backendmovie.Controllers;


import com.example.backendmovie.Models.InforMovies;
import com.example.backendmovie.Models.Movies;
import com.example.backendmovie.Models.VideoMovies;

import com.example.backendmovie.Repository.movieRepository;
import com.example.backendmovie.Services.movieServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping
@CrossOrigin
public class movieController {
    @Autowired
    private movieServices movieservices;

    @Autowired
    private movieRepository movierepository;

    @GetMapping
    public List<Movies> ResultListMovie(){
        List<Movies> Ans = new ArrayList<>();

        return movieservices.getListMovie();
    }

    @GetMapping("ObjectMoviesId/{id}")
    public Movies objectMoviesId(@PathVariable String id){
        return movieservices.getMovies(id);
    }

    @GetMapping("AllTypeFilm/{type}")
    public List<Movies> getAllTypeFilm(@PathVariable String type){
        List<Movies> Ans = movieservices.getListType(type);
        if(movieservices.getListType(type).size() >4){
            Ans.subList(0,4);
        }

        return Ans;
    }

    @GetMapping("tim-kiem/")
    public List<Movies> getAllFindMoviesName(@RequestParam(value = "name")String name){
        return movierepository.findMoviesByNameContaining(name);
    }

    @GetMapping("AllInforMoviesId/{id}")
    public InforMovies getAllInforMovies(@PathVariable String id ){
        return movieservices.getObjectInforMovies(id);
    }

    @GetMapping("/AllVideoMoviesId/{id}")
    public List<VideoMovies> getAllVideoMoviesId(@PathVariable String id){
        return movieservices.getListVideoMovies(id);
    }

    @GetMapping("/ObjectVideoMoviesIdVideo/{idvideo}")
    public VideoMovies getObjectVideoMoviesIdVideo(@PathVariable String idvideo){
        return movieservices.getVideoMovies(idvideo);
    }

}
