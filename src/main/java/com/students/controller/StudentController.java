package com.students.controller;

import com.students.domain.Student;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;
import java.util.Arrays;
import java.util.List;

@Controller
public class StudentController {
    List genders = Arrays.asList(new String[]{"Male", "Female"});
    @RequestMapping(value = "/registration", method = RequestMethod.GET)
    public String showForm(@ModelAttribute("student") Student student, Model model) {
        model.addAttribute("genders", genders);
        return "registration";
    }

    @RequestMapping(value = "/registration", method = RequestMethod.POST)
    public String processForm(@Valid @ModelAttribute("student") Student student, BindingResult bindingResult, Model model) {
        model.addAttribute("student", student);
        if (bindingResult.hasErrors()) {
            model.addAttribute("genders", genders);
            return "registration";
        }
        return "success";
    }

}

	

