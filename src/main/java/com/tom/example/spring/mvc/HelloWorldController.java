package com.tom.example.spring.mvc;

import com.tom.example.spring.mvc.model.Student;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/hello")
public class HelloWorldController {

    @RequestMapping("/showForm")
    public String showForm() {
        return "helloworld-form";
    }

    @RequestMapping("/processFormV2")
    public String letsShoutDudeV2(HttpServletRequest request, Model model) {
        String studentName = request.getParameter("studentName");
        studentName = studentName.toUpperCase();
        studentName = "Witam Panie Student: " + studentName;
        model.addAttribute("message", studentName);
        return "helloworld-v2";
    }

    @RequestMapping("/processFormV3")
    public String letsShoutDudeV3(@RequestParam("studentName") String theName, Model model) {
        String studentName = theName.toUpperCase();
        studentName = "Wersja trzecia: " + studentName;
        model.addAttribute("message", studentName);
        return "helloworld-v2";
    }

//    @RequestMapping("/processForm")
//    public String processForm(@ModelAttribute("student") Student student) {
//
//        return "student-confirmation";
//    }
}
