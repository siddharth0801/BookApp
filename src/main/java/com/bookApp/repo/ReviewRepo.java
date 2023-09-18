package com.bookApp.repo;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import com.bookApp.model.Review;
import org.springframework.stereotype.Repository;

@Repository
public interface ReviewRepo extends JpaRepository<Review, Integer> {

	@Query("SELECT r FROM Review r inner join r.b us where us.bookID=?1")
	List<Review> findReviews(int id);
	@Query("SELECT AVG(r.rating) FROM Review r inner join r.b us where us.bookID=?1")
	Object findAvgReviews(int id);
}
