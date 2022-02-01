package com.ebs.spring.web.controller;

import java.lang.annotation.Repeatable;
import java.util.List;

import javax.persistence.EntityNotFoundException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ebs.spring.web.entity.ElectUser;
import com.ebs.spring.web.repository.LoginRepository;
//import com.ebs.spring.web.reposotory.LoginReposotory;
import com.ebs.spring.web.usersService.UsersServiceImpl;

@Controller
public class HomeController {


	@Autowired
	LoginRepository loginRepository;
	@Autowired
	UsersServiceImpl usersService;

	//-------------------------------------First Page-------------------------------
	
	@RequestMapping("start")
	public String open() {

		return "Home";
	}
	
	//----------------------------------------Login Page Display---------------------------
	@GetMapping("userLogin")
	public String login() {

		return "index";
	}
	
//--------------------------------------Login Page Fetching----------------------------------
	
	@PostMapping("userLogin")//value="login",method=RequestMethod.POST)
	public ModelAndView authenticate(String userName,String password) {
		ElectUser user=usersService.validate(userName,password);
		//System.out.println(user);
		if(user!=null)

		{
			return new ModelAndView("homePage","nameKey",userName);
		}
		else {
			return new ModelAndView("index","errorKey","please enter valid user or password");

		}

	}
	//-------------------------Register Page Display--------------------------------------
	

	
	@GetMapping("userRegistration")
	public String register() {
		return "RegistrationForm";
	}

//-----------------------------Registration Page Fetching---------------------------------------
	
	@PostMapping("userRegistration")//value="registration",method=RequestMethod.POST)
	public ModelAndView saveUser(ElectUser user, @RequestParam(name="dob", required=false) String dob) {

		System.out.println(user);
		System.out.println("date is: "+dob);
		
		if(usersService.save(user)!=null) 


			return new ModelAndView("RegistrationForm");
		return null;
//		@RequestMapping(value="registerForm",method=RequestMethod.POST)
//		public ModelAndView saveUser(UserRegister user) {
//
//			if(loginRepository.save(user)!=null) 
//				return new ModelAndView("UserLogin");
//			return null;
//
//		}
	}
	//----------------------------------Home Page------------------------------------
	
	@RequestMapping("home")
	public String home() {

		return "homePage";
	}
	
//--------------------------Profile Page----------------------------------------------------
	
	@RequestMapping("profile")
	public String profile() {

		return "ProfilePage";
	}
	
	//------------------------------About Us--------------------------------------------------------
	
	@RequestMapping("AboutUs")
	public String aboutUs() {

		return "AboutUsPage";
	}
	
	//-------------------------------------------Bill Calculation--------------------------------------
	
	@RequestMapping("ebill")
	public String bill() {

		return "BillCalculationPage";
	}

	//---------------------------------delete operation--------------------------------

	@GetMapping("/deleteuser/{id}")
	public String deleteElectUser(@PathVariable (value="id") int id) {
		this.usersService.delete(id);
		return "redirect:/displayAll";
	}
	
	//----------------------update operation-------------------------
	
	@RequestMapping("/updateUser")
	  
	  public ModelAndView updateUser(@RequestParam(value="id") int id) {
	  
	  ElectUser user= usersService.updateUser(id); if(user!=null)
	  
	  return new ModelAndView("UpdateData","userKey",user);
	  
	  return null;
	  
	  }
	  


	  @RequestMapping(value="updateUserData", method=RequestMethod.POST) 
	  
	  
	  public ModelAndView updateUserData(ElectUser user)
	  {
	  
		System.out.println(user); 
		  
	  ModelAndView modelAndView=null;
	  if(usersService.save(user)!=null)
	  
		  
	  modelAndView= new ModelAndView("UpdateData","updatemessage","User data updated");
	  
	  return modelAndView; 
	  
	 
	  }
	
	  
	
//	@RequestMapping("userRegistration")//value="registerForm",method=RequestMethod.POST
//	public ModelAndView saveUser(ElectUser user) {
//
//		if(loginReposotory.save(user)!=null) 
//			return new ModelAndView("RegistrationForm");
//		return null;
//
//	}
	
//	@RequestMapping("userLogin")//value="loginForm",method=RequestMethod.POST
//	public ModelAndView authenticate(String userName,String password) {
//		ElectUser user=loginReposotory.findByUserNameAndPassword(userName,password);
//
//		if(user!=null)
//
//		{
//			return new ModelAndView("Home","nameKey",userName);
//		}
//		else {
//			return new ModelAndView("index","errorKey","please enter valid user or password");
//
//		}
//
//	}
//	@RequestMapping("login")
//	public String login() {
//
//		return "index";
//	}
//	@RequestMapping("registration")
//	public String saveUser() {
//
//		return "RegistrationForm";
//	}

	@GetMapping("find")
	public String findUser() {

		return "Find";
	}



//	= new ModelAndView("Find","ek","please enter valid userid to find");
//
//		}
//		return mv;
//	}
@PostMapping("findUser")//method=RequestMethod.POST)
	public ModelAndView findByUserName(String userName ) {

		ModelAndView mv=null;
		try {	ElectUser user=usersService.findByUserName(userName);
		
		if(user!=null)

		{
			mv=new ModelAndView("Display","loginKey",user);
		}

		}
		catch(EntityNotFoundException e)
		{
			mv= new ModelAndView("Find","ek","please enter valid username to find");
		}
		return mv;
}
//
//



	@GetMapping("displayAll")//method=RequestMethod.GET)
	public ModelAndView viewAllUsers( ) {

		ModelAndView mv=null;
		try {	
			List<ElectUser> listUser=usersService.findAll();

			if(!listUser.isEmpty())

			{
				mv=new ModelAndView("ViewAll","listKey",listUser);
			}

		}
		catch(EntityNotFoundException e)
		{
			mv= new ModelAndView("Find","ek","please enter valid userid to find");

		}
		return mv;
	}
//---------------------------------------------Logout------------------------------
	
	@RequestMapping("/logout")
    public String logout(HttpServletRequest request){
        request.getSession().invalidate();
        return "LogoutPage";
    }
	
	//--------------------------save electricity----------------------------------------------------
	
	@RequestMapping("saveElectricity")
	public String electricity() {
		return "saveElectricity";
	}
	
	//-----------------------Map Page---------------------------------------------------
	
	@RequestMapping("map")
	public String map() {
		return "Map";
	}
	
	//--------------------------------Contact Us------------------------------------
	
	@RequestMapping("contactUs")
	public String contactUs() {
		return "ContactUs";
	}
}