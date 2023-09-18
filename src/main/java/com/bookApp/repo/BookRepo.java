package com.bookApp.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import com.bookApp.model.Book;
import org.springframework.stereotype.Repository;

@Repository
public interface BookRepo extends JpaRepository<Book, Integer> {

}
