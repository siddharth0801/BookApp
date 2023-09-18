package com.bookApp.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bookApp.model.Review;
import com.bookApp.model.User;
import com.bookApp.dao.UserLogin;
import com.bookApp.repo.BookRepo;
import com.bookApp.repo.ReviewRepo;
import com.bookApp.repo.UserRepo;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class AppController {
    @Autowired
    UserRepo ur;

    @Autowired
    BookRepo br;

    @Autowired
    ReviewRepo rr;

    @RequestMapping(path = "/")
    public ModelAndView home() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("homepage.jsp");
        return mv;
    }

    @PostMapping(path = "/login")
    public String login(UserLogin login, RedirectAttributes redirectAttributes) {
        User user = ur.findByEmailAndPassword(login.getEmail(), login.getPassword());
        if (user != null) {
            System.out.println("Found User!");
            redirectAttributes.addFlashAttribute("user", user);
            return "redirect:/resultPage";
        } else {
            System.out.println("User Not Found!");
            return "redirect:/login.jsp";
        }
    }

    @GetMapping("/resultPage")
    public ModelAndView resultPage(@ModelAttribute("user") User user) {
        ModelAndView mv = new ModelAndView();
        mv.addObject("listBook", br.findAll());
        mv.addObject("user", user);
        mv.setViewName("allbooks.jsp");
        return mv;
    }

    @PostMapping(path = "/signup")
    public String signup(User e) {
        ur.save(e);
        return "redirect:/login.jsp";
    }

    @RequestMapping("/book")
    public ModelAndView getReviews(HttpServletRequest request, HttpServletResponse response) {

        int bid = Integer.parseInt(request.getParameter("bid"));
        int uid = Integer.parseInt(request.getParameter("uid"));
        ModelAndView mv = new ModelAndView();
        mv.addObject("book", br.findById(bid).get());
        mv.addObject("user", ur.findById(uid).get());
        mv.addObject("reviews", rr.findReviews(bid));
        mv.addObject("avgrating", rr.findAvgReviews(bid));
        mv.setViewName("reviews.jsp");
        return mv;
    }

    @RequestMapping("/addReview")
    public ModelAndView addReview(HttpServletRequest request, HttpServletResponse response, Review r) {
        int bid = Integer.parseInt(request.getParameter("bid"));
        int uid = Integer.parseInt(request.getParameter("uid"));
        r.setU(ur.findById(uid).get());
        r.setB(br.findById(bid).get());
        if (r.getComment() != null) {
            rr.save(r);
        }
        ModelAndView mv = new ModelAndView();
        mv.addObject("book", br.findById(bid).get());
        mv.addObject("user", ur.findById(uid).get());
        mv.addObject("reviews", rr.findReviews(bid));
        mv.addObject("avgrating", rr.findAvgReviews(bid) == null ? 0 : (Double) rr.findAvgReviews(bid));
        mv.setViewName("reviews.jsp");
        return mv;
    }
}
