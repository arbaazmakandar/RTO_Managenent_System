package net.javaguides.usermanagement.web;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.javaguides.usermanagement.dao.UserDAO;
import net.javaguides.usermanagement.model.User;



@WebServlet("/")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDAO userDAO;
	
	public void init() {
		userDAO = new UserDAO();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getServletPath();

		try {
			switch (action) {
			case "/new":
				showNewForm(request, response);
				break;
			case "/insert":
				insertUser(request, response);
				break;
			case "/delete":
				deleteUser(request, response);
				break;
			case "/edit":
				showEditForm(request, response);
				break;
			case "/update":
				updateUser(request, response);
				break;
			case "/kk":
				listUser(request, response);
				break;
			case "/list":
				listUser(request, response);
				break;
			case "/listVehicles":
				listVehicles(request, response);
				break;
				
			case "/oldnew":
				showNewOldForm(request, response);
				break;
			case "/oldinsert":
				insertOldUser(request, response);
				break;
			case "/olddelete":
				deleteOldUser(request, response);
				break;
			case "/oldedit":
				showEditOldForm(request, response);
				break;
			case "/oldupdate":
				updateOldUser(request, response);
				break;
			case "/oldkk":
				listOldUser(request, response);
				break;
			case "/oldlist":
				listOldUser(request, response);
				break;
			case "/oldlistVehicles":
				listOldVehicles(request, response);
				break;	
				
			case "/checkOldDetails":
				checkOldDetails(request,response);
				break;
				
			case "/checkNewDetails":
				checkNewDetails(request,response);
				break;
				
				
//			case "/updatepaymentold":
//				updatePaymentOld11(request, response);
//				break;
//				
//			case "/updatepaymentnew":
//				updatePaymentNew11(request, response);
//				break;
				
			default:
				listVehicles(request, response);
				break;
		
			}
		} catch (SQLException ex) {
			throw new ServletException(ex);
		}
	}
	
	private void checkOldDetails(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException, ServletException {
		int id = Integer.parseInt(request.getParameter("id"));

		String ownerName = request.getParameter("ownerName");
		User existingUser = userDAO.selectOldUserbyownernameandid(id,ownerName);
		RequestDispatcher dispatcher = request.getRequestDispatcher("checkOldUser.jsp");
		request.setAttribute("user", existingUser);
		dispatcher.include(request, response);

	}

	private void checkNewDetails(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException, ServletException {
		int id = Integer.parseInt(request.getParameter("id"));

		String ownerName = request.getParameter("ownerName");
		User existingUser = userDAO.selectUserbyownernameandid(id,ownerName);
		RequestDispatcher dispatcher = request.getRequestDispatcher("checkNewUser.jsp");
		request.setAttribute("user", existingUser);
     	dispatcher.include(request, response);		
	}
	

	

	private void listUser(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		List<User> listUser = userDAO.selectAllUsers();
		request.setAttribute("listUser", listUser);
		RequestDispatcher dispatcher = request.getRequestDispatcher("checkStatus.jsp");
		dispatcher.forward(request, response);
	}
	
	private void listOldUser(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		List<User> listUser = userDAO.selectAllOldUsers();
		request.setAttribute("listUser", listUser);
		RequestDispatcher dispatcher = request.getRequestDispatcher("checkOldStatus.jsp");
		dispatcher.forward(request, response);
	}
	
	private void listVehicles(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		List<User> listUser = userDAO.selectAllUsers();
		request.setAttribute("listUser", listUser);
		RequestDispatcher dispatcher = request.getRequestDispatcher("user-list1.jsp");
		dispatcher.forward(request, response);
	}
	
	private void listOldVehicles(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		List<User> listUser = userDAO.selectAllOldUsers();
		request.setAttribute("listUser", listUser);
		RequestDispatcher dispatcher = request.getRequestDispatcher("user-list1old.jsp");
		dispatcher.forward(request, response);
	}

	

	private void showNewForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("user-form.jsp");
		dispatcher.forward(request, response);
	}
	
	private void showNewOldForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("oldvehicleRegform.jsp");
		dispatcher.forward(request, response);
	}

	private void showEditForm(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		User existingUser = userDAO.selectUser(id);
		RequestDispatcher dispatcher = request.getRequestDispatcher("user-form1.jsp");
		request.setAttribute("user", existingUser);
		dispatcher.forward(request, response);

	}
	
	private void showEditOldForm(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		User existingUser = userDAO.selectOldUser(id);
		RequestDispatcher dispatcher = request.getRequestDispatcher("oldvehicleRegform1.jsp");
		request.setAttribute("user", existingUser);
		dispatcher.forward(request, response);

	}

	private void insertUser(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		String ownerName = request.getParameter("ownerName");
		String aadharNum = request.getParameter("aadharNum");
		String tempNum = request.getParameter("tempNum");
		String vehicleType = request.getParameter("vehicleType");
		String modelName = request.getParameter("modelName");
		String manufacName = request.getParameter("manufacName");
		String manufacDate = request.getParameter("manufacDate");
		String chasisNum = request.getParameter("chasisNum");
		String engineNum = request.getParameter("engineNum");
		String color = request.getParameter("color");
		String seatingCap = request.getParameter("seatingCap");
		String numOfWheels = request.getParameter("numOfWheels");
		String typeOfFuel = request.getParameter("typeOfFuel");
		String insurancePolicyNum = request.getParameter("insurancePolicyNum");
		String insuranceCompany = request.getParameter("insuranceCompany");
		String status = "Not Accepted";
		String permVehicleNum = "Not Allotted";
		String regDate = "Not Yet Registered";
		String regEndDate = "Not Yet Registered";
		String amount = request.getParameter("amount");

		User newUser = new User( ownerName,  aadharNum,  tempNum,  vehicleType,  modelName,manufacName,  manufacDate,  chasisNum,  engineNum,  color,  seatingCap,numOfWheels,  typeOfFuel,  status,  insurancePolicyNum,  insuranceCompany,permVehicleNum,  regDate,regEndDate,amount);
		userDAO.insertUser(newUser);
		response.sendRedirect("kk");
	}

	private void insertOldUser(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		String ownerName = request.getParameter("ownerName");
		String aadharNum = request.getParameter("aadharNum");
		String kmsRan = request.getParameter("kmsRan");
		String vehicleType = request.getParameter("vehicleType");
		String modelName = request.getParameter("modelName");
		String manufacName = request.getParameter("manufacName");
		String manufacDate = request.getParameter("manufacDate");
		String chasisNum = request.getParameter("chasisNum");
		String engineNum = request.getParameter("engineNum");
		String color = request.getParameter("color");
		String seatingCap = request.getParameter("seatingCap");
		String numOfWheels = request.getParameter("numOfWheels");
		String typeOfFuel = request.getParameter("typeOfFuel");
		String status = "Not Accepted";
		String insurancePolicyNum = request.getParameter("insurancePolicyNum");
		String insuranceCompany = request.getParameter("insuranceCompany");
		
		String permVehicleNum = request.getParameter("permVehicleNum");
		String regExpiryDate = request.getParameter("regExpiryDate");
		String newRegDate = "Not Yet Registered";
		String newRegEndDate = "Not Yet Registered";
		
		String regPayment  = request.getParameter("regPayment");
		String PUCNo = request.getParameter("PUCNo"); 
		String PUCIssueDt = request.getParameter("PUCissueDt");  
		String PUCexpDt = request.getParameter("PUCexpDt");  
		String newPermVehicleNum =  "Not Yet Allocated";
		

		User newUser = new User( ownerName,  aadharNum,  kmsRan,  vehicleType,  modelName,manufacName,  manufacDate,  chasisNum,  engineNum,  
				color,  seatingCap,numOfWheels,  typeOfFuel,  status,  insurancePolicyNum,  insuranceCompany,permVehicleNum, regExpiryDate, newRegDate, newRegEndDate,regPayment, PUCNo, PUCIssueDt, PUCexpDt,  newPermVehicleNum );
		userDAO.insertOldUser(newUser);
		response.sendRedirect("oldkk");
	}
	
	
	
	private void updateUser(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		String ownerName = request.getParameter("ownerName");
		String aadharNum = request.getParameter("aadharNum");
		String tempNum = request.getParameter("tempNum");
		String vehicleType = request.getParameter("vehicleType");
		String modelName = request.getParameter("modelName");
		String manufacName = request.getParameter("manufacName");
		String manufacDate = request.getParameter("manufacDate");
		String chasisNum = request.getParameter("chasisNum");
		String engineNum = request.getParameter("engineNum");
		String color = request.getParameter("color");
		String seatingCap = request.getParameter("seatingCap");
		String numOfWheels = request.getParameter("numOfWheels");
		String typeOfFuel = request.getParameter("typeOfFuel");
		String insurancePolicyNum = request.getParameter("insurancePolicyNum");
		String insuranceCompany = request.getParameter("insuranceCompany");
		String regDate = request.getParameter("regDate");
		String regEndDate = request.getParameter("regEndDate");

		String permVehicleNum = request.getParameter("permVehicleNum");
		String status = request.getParameter("status");
		String amount = request.getParameter("amount");
		
		
		System.out.println(id + " Updated");
		User book = new User( id, ownerName,  aadharNum,  tempNum,  vehicleType,  modelName,manufacName,  manufacDate,  chasisNum,  engineNum,  color,  seatingCap,numOfWheels,  typeOfFuel,  status,  insurancePolicyNum,  insuranceCompany,permVehicleNum,  regDate,regEndDate, amount);
		userDAO.updateUser(book);
		response.sendRedirect("listVehicles");
	}
	
	private void updateOldUser(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		String ownerName = request.getParameter("ownerName");
		String aadharNum = request.getParameter("aadharNum");
		String kmsRan = request.getParameter("kmsRan");
		String vehicleType = request.getParameter("vehicleType");
		String modelName = request.getParameter("modelName");
		String manufacName = request.getParameter("manufacName");
		String manufacDate = request.getParameter("manufacDate");
		String chasisNum = request.getParameter("chasisNum");
		String engineNum = request.getParameter("engineNum");
		String color = request.getParameter("color");
		String seatingCap = request.getParameter("seatingCap");
		String numOfWheels = request.getParameter("numOfWheels");
		String typeOfFuel = request.getParameter("typeOfFuel");
		String status = request.getParameter("status");
		String insurancePolicyNum = request.getParameter("insurancePolicyNum");
		String insuranceCompany = request.getParameter("insuranceCompany");
		String permVehicleNum = request.getParameter("permVehicleNum");
		String regExpiryDate= request.getParameter("regExpiryDate");
		String newRegDate=request.getParameter("newRegDate");
		String newRegEndDate= request.getParameter("newRegEndDate");
		
		String regPayment= request.getParameter("regPayment");
		String PUCNo= request.getParameter("PUCNo");
		String PUCIssueDt=request.getParameter("PUCissueDt");
		String PUCexpDt=  request.getParameter("PUCexpDt");
		String newPermVehicleNum= request.getParameter("newPermVehicleNum");
		

		
		System.out.println(id + " Updated");
		User book = new User( id, ownerName,  aadharNum,  kmsRan,  vehicleType,  modelName ,manufacName,  manufacDate,  chasisNum,  engineNum,  color,  seatingCap,numOfWheels,  typeOfFuel,  status,  insurancePolicyNum,  insuranceCompany,permVehicleNum, regExpiryDate, newRegDate, newRegEndDate,  regPayment, PUCNo, PUCIssueDt, PUCexpDt, newPermVehicleNum);		
		userDAO.updateOldUser(book);
		response.sendRedirect("oldlistVehicles");
	}
	
	
	
	
//	
//	private void updatePaymentOld11(HttpServletRequest request, HttpServletResponse response) 
//			throws SQLException, IOException {
//		int id = Integer.parseInt(request.getParameter("id"));
//		
//		String amount = request.getParameter("amount");
//		
//		System.out.println(id + " Updated");
//		User book = new User( id, amount);
//		userDAO.updatePaymentOld(book);
//		response.sendRedirect("kk");
//	}
//	private void updatePaymentNew11(HttpServletRequest request, HttpServletResponse response) 
//			throws SQLException, IOException {
//		int id = Integer.parseInt(request.getParameter("id"));
//		
//		String amount = request.getParameter("amount");
//		
//		System.out.println(id + " Updated");
//		User book = new User( id, amount);
//		userDAO.updatePaymentNew(book);
//		response.sendRedirect("kk");
//	}
	private void deleteUser(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		userDAO.deleteUser(id);
		System.out.println(id + " DELETED");
		response.sendRedirect("listVehicles");

	}
	
	private void deleteOldUser(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		userDAO.deleteOldUser(id);
		System.out.println(id + " DELETED");
		response.sendRedirect("listOldVehicles");

	}

}
