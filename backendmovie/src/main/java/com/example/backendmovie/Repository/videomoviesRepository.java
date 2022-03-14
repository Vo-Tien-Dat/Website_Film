package com.example.backendmovie.Repository;

import com.example.backendmovie.Models.VideoMovies;
import org.springframework.data.jpa.repository.JpaRepository;


import java.util.List;

public interface videomoviesRepository extends JpaRepository<VideoMovies,String> {
    // lay danh sach cac tap phim theo id cua movies
    List<VideoMovies> findVideomoviesById(String id);

    VideoMovies findVideomoviesByIdvideo(String idvideo);
}
