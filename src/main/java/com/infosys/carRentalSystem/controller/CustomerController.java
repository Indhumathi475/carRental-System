package com.infosys.carRentalSystem.controller;

import com.infosys.carRentalSystem.bean.Customer;
import com.infosys.carRentalSystem.dao.CarUserRepository;
import com.infosys.carRentalSystem.dao.CustomerDao;
import com.infosys.carRentalSystem.service.CarUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@RestController
public class CustomerController {
    @Autowired
    private CustomerDao customerDao;
    @Autowired
    private CarUserService carUserService;
    @Autowired
    private CarUserRepository carUserRepository;

    @GetMapping("/myaccount")
    public ModelAndView showCustomerDetailsPage() {
        String username = carUserService.getUsername();
        ModelAndView mv = new ModelAndView("customerProfilePage");
        Customer customer = customerDao.findById(username);
        mv.addObject("customer", customer);
        return mv;
    }

    @GetMapping("/customerReport")
    public ModelAndView showCustomerReport() {
        ModelAndView mv = new ModelAndView("customerReportPage");
        List<Customer> customers = customerDao.findAll();
        mv.addObject("customers", customers);
        return mv;
    }

    @GetMapping("/myaccount/completeProfile")
    public ModelAndView customerCompleteProfilePage() {
        String username = carUserService.getUsername();
        String email = carUserService.getEmail();
        Customer customer = new Customer(username, email);
        ModelAndView mv = new ModelAndView("customerCompleteProfilePage");
        mv.addObject("customer", customer);
        return mv;
    }

    @GetMapping("/customer/update/{username}")
    public ModelAndView customerUpdatePage(@PathVariable String username) {
        String role = carUserService.getRole();
        String page;
        if(role.equalsIgnoreCase("ADMIN")) {
            page = "customerUpdatePageAdmin";
        } else {
            page = "customerUpdatePageCustomer";
        }
        Customer customer = customerDao.findById(username);
        ModelAndView mv = new ModelAndView(page);
        mv.addObject("customer", customer);
        return mv;
    }

    @PostMapping("/myaccount/update")
    public ModelAndView updateCustomerDetail(@ModelAttribute("customer") Customer customer) {
        String role = carUserService.getRole();
        String page;
        if(role.equalsIgnoreCase("ADMIN")) {
            page = "redirect:/customerReport";
        } else {
            page = "redirect:/myaccount";
        }
        customerDao.save(customer);
        return new ModelAndView(page);
    }

    @GetMapping("/customerDelete/{id}")
    public ModelAndView deleteCustomer (@PathVariable String id) {
        customerDao.deleteCustomerById(id);
        carUserRepository.deleteById(id);
        return new ModelAndView("redirect:/customerReport");
    }

}
