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
public class PersonController {

    @Autowired
    private PersonDao personDao;

    @RequestMapping("/person")
    public ModelAndView showAddPersonForm(){
        return new ModelAndView("addPerson", "person", new Person());
    }

    @RequestMapping(value = "person/add", method = RequestMethod.POST)
    public String submitPersonForm(@ModelAttribute("person") Person person){
        personDao.savePerson(person);
        System.out.println(personDao);
        return  "index";
    }
}
