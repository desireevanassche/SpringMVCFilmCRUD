package com.skilldistillery.mvcfilmsite.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.mvcfilmsite.data.FilmDAO;
import com.skilldistillery.mvcfilmsite.entities.Film;

@Controller
public class FilmController {

	@Autowired
	private FilmDAO filmDao;

	@RequestMapping(path = { "/", "home.do" })
	public String home() {
		return "WEB-INF/home.jsp";
	}

	@RequestMapping(path = "filmbyid.do", params = "id", method = RequestMethod.GET)
	public ModelAndView home(@RequestParam("id") int filmId) {
		ModelAndView mv = new ModelAndView();
		Film s = filmDao.findFilmById(filmId);
		mv.addObject("film", s);
		mv.setViewName("WEB-INF/result.jsp");
		return mv;
	}

	@RequestMapping(path = "filmbykey.do", params = "keyword", method = RequestMethod.GET)
	public ModelAndView home(@RequestParam("keyword") String keyword) {
		ModelAndView mv = new ModelAndView();
		List<Film> s = filmDao.findFilmBySearchKeyword(keyword);
		mv.addObject("films", s);
		mv.setViewName("WEB-INF/result.jsp");
		return mv;


}
	
	@RequestMapping(path = "createfilm.do", method = RequestMethod.POST)
	public ModelAndView createFilm( Film film) {
		System.out.println(film);
		ModelAndView mv = new ModelAndView();
		Film newFilm = filmDao.createFilm(film);
		mv.addObject("film", newFilm);
		mv.setViewName("WEB-INF/result.jsp");
		return mv;
		
	}
		
		@RequestMapping(path = "deletefilm.do", params = "filmId", method = RequestMethod.POST)
		public ModelAndView deleteFilm(@RequestParam("filmId") String filmId) {
			System.out.println(filmId);
			ModelAndView mv = new ModelAndView();
			
			Film film = filmDao.findFilmById(Integer.parseInt(filmId));
			boolean success = filmDao.deleteFilm(film);
			
			if (film != null) {
				
				if (success ) {
					mv.setViewName("WEB-INF/success.jsp");
					return mv;
				} else {
					mv.setViewName("WEB-INF/deletefail.jsp");
					return mv;
				}
			}else {
				mv.setViewName("WEB-INF/filmnotfound.jsp");
				return mv;
			}
	}
	

	
	@RequestMapping(path = "updatefilm.do", method = RequestMethod.POST)
	public ModelAndView updatefilm( Film film, @RequestParam("filmId") String filmId) {
		ModelAndView mv = new ModelAndView();
		System.out.println(filmId);
		filmDao.updateFilm(film, Integer.parseInt(filmId));
		mv.setViewName("WEB-INF/result.jsp");
		return mv;
		
	}

}