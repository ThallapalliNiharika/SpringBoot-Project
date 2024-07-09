package com.jtspringproject.JtSpringProject.controller;

import com.jtspringproject.JtSpringProject.models.Cart;
import com.jtspringproject.JtSpringProject.models.Product;
import com.jtspringproject.JtSpringProject.models.User;

import java.security.Principal;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.jtspringproject.JtSpringProject.services.userService;
import com.jtspringproject.JtSpringProject.services.cartService;
import com.jtspringproject.JtSpringProject.services.productService;




@Controller
public class UserController{
  
  @Autowired
  private userService userService;

  @Autowired
  private productService productService;
  
  @Autowired
  private cartService cartService;


  @GetMapping("/register")
  public String registerUser()
  {
    return "register";
  }
  @GetMapping("/")
  public String firstpage() {
	  return "firstpage";
  }

  @GetMapping("/uproduct")
  public String uproduct(Model model) {
    
    return "uproduct";
  }
  @GetMapping("/cartproduct")
  public String cartproduct(Model model) {
    
    return "cartproduct";
  }
  @GetMapping("/index")
  public String index(Model model) {
    
    return "index";
  }

  @GetMapping("/login")
  public String userlogin(Model model) {
    
    return "userLogin";
  }
  @GetMapping("/cart")
  public String cart() {
    
    return "cart";
  }
  @GetMapping("/buy1")
  public String buy1() {
    
    return "buy1";
  }
  @GetMapping("/buy2")
  public String buy2() {
    
    return "buy2";
  }
  @GetMapping("/buy3")
  public String buy3() {
    
    return "buy3";
  }
  @GetMapping("/buy4")
  public String buy4() {
    
    return "buy4";
  }
  @GetMapping("/cartDetailsView")
  public String cartDetailsView(Model model) {
    
    return "cartDetailsView";
  }
  @RequestMapping(value = "userloginvalidate", method = RequestMethod.POST)
  public ModelAndView userlogin(@RequestParam("username") String username,
                                @RequestParam("password") String pass,
                                Model model,
                                HttpServletResponse res, HttpSession session) {

      //System.out.println(username);
      User u = this.userService.checkLogin(username, pass);
      //System.out.println(u.getUsername());

      ModelAndView mView = new ModelAndView();

      if(u != null && u.getUsername() != null && u.getUsername().equals(username)) {
          res.addCookie(new Cookie("username", u.getUsername()));
          session.setAttribute("username", u.getUsername());
          mView.setViewName("index");
          mView.addObject("user", username);
          System.out.println(username);
          List<Product> products = this.productService.getProducts();
          
          if (products.isEmpty()) {
              mView.addObject("msg", "No products are available");
          } else {
              mView.addObject("products", products);
          }
      } else {
          mView.setViewName("userLogin");
          mView.addObject("error", "Invalid login credentials. Please try again.");
      }

      return mView;
  }
  
  
  @GetMapping("/products")
  public ModelAndView getProducts() {
      ModelAndView mView = new ModelAndView("uproduct");
      
      // Retrieve all products
      List<Product> products = productService.getProducts();

      if (products.isEmpty()) {
          mView.addObject("msg", "No products are available");
      } else {
          mView.addObject("products", products);
      }

      return mView;
  }

  @GetMapping("products/{id}")
  public ModelAndView getProduct(@PathVariable("id") int id) {
      ModelAndView mView = new ModelAndView("productDetail");
      
      // Retrieve a single product by its ID
      Product product = productService.getProduct(id);

      if (product != null) {
          mView.addObject("product", product);
      } else {
          mView.addObject("msg", "Product not found");
      }

      return mView;
  }

  @RequestMapping(value = "newuserregister", method = RequestMethod.POST)
  public String newUseRegister(@ModelAttribute User user)
  {
    
    System.out.println(user.getEmail());
    user.setRole("ROLE_NORMAL");
    this.userService.addUser(user);
    
    return "redirect:/login";
  }
  
  
  
     //for Learning purpose of model
    @GetMapping("/test")
    public String Test(Model model)
    {
      System.out.println("test page");
      model.addAttribute("author","jay gajera");
      model.addAttribute("id",40);
      
      List<String> friends = new ArrayList<String>();
      model.addAttribute("f",friends);
      friends.add("xyz");
      friends.add("abc");
      
      return "test";
    }
    
    
    @GetMapping("/test2")
    public ModelAndView Test2()
    {
      System.out.println("test page");
      //create modelandview object
      ModelAndView mv=new ModelAndView();
      mv.addObject("name","jay gajera 17");
      mv.addObject("id",40);
      mv.setViewName("test2");
      
      List<Integer> list=new ArrayList<Integer>();
      list.add(10);
      list.add(25);
      mv.addObject("marks",list);
      return mv;
    }
    
    @GetMapping("profiles")
    public String profile(Model model, HttpSession session) {
        String displayusername, displaypassword, displayemail, displayaddress;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecomjava", "root", "niharika");
            Statement stmt = con.createStatement();

            String username = (String) session.getAttribute("username"); // Use "username" here, not "user"

            ResultSet rst = stmt.executeQuery("SELECT * FROM customer WHERE username = '" + username + "';");

            if (rst.next()) {
                int userid = rst.getInt(1);
                displayusername = rst.getString(6);
                displayemail = rst.getString(3);
                displaypassword = rst.getString(4);
                displayaddress = rst.getString(2);
                model.addAttribute("userid", userid);
                model.addAttribute("username", displayusername);
                model.addAttribute("email", displayemail);
                model.addAttribute("password", displaypassword);
                model.addAttribute("address", displayaddress);
            }
        } catch (Exception e) {
            System.out.println("Exception: " + e);    
        }
        return "profile"; 
    }
    @PostMapping("/addtocart")
    public String addToCart(@ModelAttribute Cart cart, Model model, Principal principal) {
        try {
            // Add the cart item
            this.cartService.addCartItem(cart);

            // Redirect to the index page to display updated product list
            return "redirect:/index";
        } catch (Exception e) {
            e.printStackTrace();
            model.addAttribute("error", "An error occurred while adding the item to the cart.");
            return "redirect:/index";
        }
    }

    @GetMapping("carts")
    public ModelAndView getCartDetails() {
        ModelAndView mv = new ModelAndView();
        try {
            List<Cart> carts = cartService.getCartItems();
            mv.addObject("carts", carts);
            mv.setViewName("cartDetailsView");
        } catch (Exception e) {
            e.printStackTrace();
            mv.setViewName("errorView");
        }
        return mv;
    }
}