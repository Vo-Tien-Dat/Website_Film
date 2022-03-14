package com.example.backendmovie.Repository;


import com.example.backendmovie.Models.InforMovies;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface informoviesRepostitory extends JpaRepository<InforMovies,String> {
    // tim thong tin theo id cua movies
    InforMovies findInformoviesById(String id);
}
