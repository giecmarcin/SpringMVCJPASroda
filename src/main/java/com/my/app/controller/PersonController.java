package com.my.app.controller;

import com.my.app.model.Person;
import com.my.app.repository.PersonDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by mgiec on 9/7/2016.
 */

@Controller
@RequestMapping("/person")
public class PersonController {

    @Autowired
    private PersonDao personDao;

    @RequestMapping("/form")
    public ModelAndView showAddPersonForm(){
        return new ModelAndView("person", "person", new Person());
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public ModelAndView submitPersonForm(@ModelAttribute("person") Person person){
        personDao.savePerson(person);
        System.out.println(personDao);
        return  new ModelAndView("redirect:/");
    }
}
