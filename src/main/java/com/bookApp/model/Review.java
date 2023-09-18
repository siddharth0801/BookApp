package com.bookApp.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Review {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int reviewID;
	@ManyToOne
    @JoinColumn(name = "UserID")
	private User u;
	@ManyToOne
    @JoinColumn(name = "bookID")
	private Book b;
	private String comment;
	private int rating;
}
