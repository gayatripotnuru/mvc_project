package com.MovieApp.MovieApp.controller;

import java.util.ArrayList;

import java.util.List;

import com.MovieApp.MovieApp.Entity.Movie;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DashboardController {

	private List<Movie> movieList;

	public DashboardController() {
		movieList = new ArrayList<>();

		movieList.add(new Movie(101,"https://upload.wikimedia.org/wikipedia/en/1/17/Sarkaru_Vaari_Paata.jpg",
				"Sarkaru Vaari Paata", "4.3"));

		movieList.add(new Movie(102,"https://upload.wikimedia.org/wikipedia/en/5/56/Jalsa_poster.jpg", "Jalsa", "4.3"));
		movieList.add(new Movie(103,"https://upload.wikimedia.org/wikipedia/en/6/6c/Lucky_Baskhar_film_poster.jpg",
				"Lucky Baskhar", "4.3"));
		movieList.add(
				new Movie(104,"https://upload.wikimedia.org/wikipedia/en/d/d6/Sarrainodu_poster.jpg", "Sarrainodu", "4.3"));
		movieList.add(new Movie(105,
				"https://assets-in.bmscdn.com/iedb/movies/images/mobile/thumbnail/xlarge/gabbar-singh-telugu-et00007159-1665126274.jpg",
				"Gabbar Singh", "4.3"));
		movieList.add(new Movie(106,
				"https://upload.wikimedia.org/wikipedia/en/3/3d/Aarya_Telugu_Movie.jpg",
				"aarya", "4.3"));
		movieList.add(new Movie(107,
				"https://upload.wikimedia.org/wikipedia/en/2/28/Ala_Vaikunthapurramuloo.jpeg",
				"Ala_Vaikunthapurramuloo", "4.3"));
		movieList.add(new Movie(108,
				"https://upload.wikimedia.org/wikipedia/en/5/5a/Radhe_Shyam.jpg",
				"Radhe_Shyam", "4.3"));

	}

	@GetMapping("/dashboard")
	public String dashboard(Model model) {
	    model.addAttribute("movieList", movieList);
	    return "dashboard"; 
	}

}
