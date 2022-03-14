package com.example.backendmovie.Repository;

import com.example.backendmovie.Models.Movies;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;
@Repository
public interface movieRepository extends JpaRepository<Movies,String> {
    // tim thong tin tin mot bo phim
    Movies findMoviesById(String id);

    // lay danh sach kieu phim
    ArrayList<Movies> findMoviesByType(String type);

    ArrayList<Movies> findMoviesByNameContaining(String name);
}
