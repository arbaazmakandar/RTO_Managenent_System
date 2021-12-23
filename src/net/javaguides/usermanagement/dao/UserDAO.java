package net.javaguides.usermanagement.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import net.javaguides.usermanagement.model.User;

/**
 * AbstractDAO.java This DAO class provides CRUD database operations for the
 * table users in the database.
 * 
 * @author arbaaz
 *
 */
public class UserDAO {
	private String jdbcURL = "jdbc:mysql://localhost:3306/rto";
	private String jdbcUsername = "root";
	private String jdbcPassword = "1234";

	private static final String INSERT_USERS_SQL = "INSERT INTO users" + "  ( ownerName,  aadharNum,  tempNum,  vehicleType,  modelName,manufacName,  manufacDate,  chasisNum,  engineNum,  color,  seatingCap,numOfWheels,  typeOfFuel,  status,  insurancePolicyNum,  insuranceCompany,permVehicleNum,  regDate,regEndDate,taxpaymentPlusregpayment) VALUES "
			+ " (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);";

	private static final String SELECT_USER_BY_ID = "select id, ownerName,  aadharNum,  tempNum,  vehicleType,  modelName,manufacName,  manufacDate,  chasisNum,  engineNum,  color,  seatingCap,numOfWheels,  typeOfFuel,  status,  insurancePolicyNum,  insuranceCompany,permVehicleNum,  regDate, regEndDate,taxpaymentPlusregpayment from users where id =?";
	private static final String SELECT_ALL_USERS = "select  id, ownerName,  aadharNum,  tempNum,  vehicleType,  modelName,manufacName,  manufacDate,  chasisNum,  engineNum,  color,  seatingCap,numOfWheels,  typeOfFuel,  status,  insurancePolicyNum,  insuranceCompany,permVehicleNum,  regDate,regEndDate,taxpaymentPlusregpayment from users";
	private static final String DELETE_USERS_SQL = "delete from users where id = ?;";
	private static final String UPDATE_USERS_SQL = "update users set  status= ?,permVehicleNum= ?,  regDate= ?, regEndDate= ? where id = ?;";
	private static final String SELECT_VEHICLES_BY_OWNER = "select id, ownerName,  aadharNum,  tempNum,  vehicleType,  modelName,manufacName,  manufacDate,  chasisNum,  engineNum,  color,  seatingCap,numOfWheels,  typeOfFuel,  status,  insurancePolicyNum,  insuranceCompany,permVehicleNum,  regDate,regEndDate,taxpaymentPlusregpayment from users where ownerName =?";
	private static final String SELECT_VEHICLE_BY_OWNER_AND_ID = "select id, ownerName,  aadharNum,  tempNum,  vehicleType,  modelName,manufacName,  manufacDate,  chasisNum,  engineNum,  color,  seatingCap,numOfWheels,  typeOfFuel,  status,  insurancePolicyNum,  insuranceCompany,permVehicleNum,  regDate,regEndDate,taxpaymentPlusregpayment from users where ownerName =? and id=?";
	
	
	
	private static final String INSERT_OLDUSERS_SQL = "INSERT INTO oldusers" + "  ( ownerName,  aadharNum,  kmsRan,  vehicleType,  modelName,  manufacName,  manufacDate,  chasisNum,  engineNum,  color,  seatingCap,numOfWheels,  typeOfFuel,  status,  insurancePolicyNum,  insuranceCompany,permVehicleNum, regExpiryDate, newRegDate, newRegEndDate, newPermVehicleNum, regPayment, PUCNo, PUCIssueDt, PUCexpDt) VALUES "
			+ " (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);";

	private static final String SELECT_OLDUSER_BY_ID = "select id, ownerName,  aadharNum,   kmsRan,  vehicleType,  modelName,manufacName,  manufacDate,  chasisNum,  engineNum,  color,  seatingCap, numOfWheels,  typeOfFuel,  status,  insurancePolicyNum,  insuranceCompany,permVehicleNum, regExpiryDate, newRegDate, newRegEndDate, newPermVehicleNum, regPayment, PUCNo, PUCIssueDt, PUCexpDt from oldusers where id =?";
	private static final String SELECT_ALL_OLDUSERS = "select  id, ownerName,  aadharNum,   kmsRan, vehicleType,  modelName,manufacName,  manufacDate,  chasisNum,  engineNum,  color,  seatingCap, numOfWheels,  typeOfFuel,  status,  insurancePolicyNum,  insuranceCompany,permVehicleNum, regExpiryDate, newRegDate, newRegEndDate, newPermVehicleNum, regPayment, PUCNo, PUCIssueDt, PUCexpDt from oldusers";
	private static final String DELETE_OLDUSERS_SQL = "delete from oldusers where id = ?;";
	private static final String UPDATE_OLDUSERS_SQL = "update oldusers set status= ?,   newRegDate= ?, newRegEndDate= ?, newPermVehicleNum= ? where id = ?;";
	private static final String SELECT_OLDVEHICLES_BY_OWNER = "select id, ownerName,  aadharNum, kmsRan,   vehicleType,  modelName,manufacName,  manufacDate,  chasisNum,  engineNum,  color,  seatingCap,numOfWheels,  typeOfFuel,  status,  insurancePolicyNum,  insuranceCompany,permVehicleNum, regExpiryDate, newRegDate, newRegEndDate, newPermVehicleNum, regPayment, PUCNo, PUCIssueDt, PUCexpDt from oldusers where ownerName =?";
	private static final String SELECT_OLDVEHICLE_BY_OWNER_AND_ID = "select id, ownerName,  aadharNum,  kmsRan,  vehicleType,  modelName,manufacName,  manufacDate,  chasisNum,  engineNum,  color,  seatingCap,numOfWheels,  typeOfFuel,  status,  insurancePolicyNum,  insuranceCompany,permVehicleNum,  regExpiryDate,newRegDate ,newRegEndDate ,newPermVehicleNum, regpayment,  PUCNo ,PUCissueDt  ,PUCexpDt  from oldusers where ownerName =? and id=?";

	
	
	
	
	
	public UserDAO() {
	}

	protected Connection getConnection() {
		Connection connection = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return connection;
	}

	public void insertUser(User user) throws SQLException {
		System.out.println(INSERT_USERS_SQL);
		// try-with-resource statement will auto close the connection.
		try (Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
			preparedStatement.setString(1, user.getOwnerName());
			preparedStatement.setString(2, user.getAadharNum());
			preparedStatement.setString(3, user.getTempNum());
			preparedStatement.setString(4, user.getVehicleType());
			preparedStatement.setString(5, user.getModelName());
			preparedStatement.setString(6, user.getManufacName());
			preparedStatement.setString(7, user.getManufacDate());
			preparedStatement.setString(8, user.getChasisNum());
			preparedStatement.setString(9, user.getEngineNum());
			preparedStatement.setString(10, user.getColor());
			preparedStatement.setString(11, user.getSeatingCap());
			preparedStatement.setString(12, user.getNumOfWheels());
			preparedStatement.setString(13, user.getTypeOfFuel());
			preparedStatement.setString(14, "Not Accepted");
			preparedStatement.setString(15, user.getInsurancePolicyNum());
			preparedStatement.setString(16, user.getInsuranceCompany());
			preparedStatement.setString(17, "Not Yet Allocated");
			preparedStatement.setString(18, "Not Yet Registered");
			preparedStatement.setString(19, "Not Yet Registered");
			preparedStatement.setString(20, user.getAmount());
			System.out.println(preparedStatement);
			preparedStatement.executeUpdate();
			
		} catch (SQLException e) {
			printSQLException(e);
		}
	}
	
	
	public void insertOldUser(User user) throws SQLException {
		System.out.println(INSERT_OLDUSERS_SQL);
		// try-with-resource statement will auto close the connection.
		try (Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_OLDUSERS_SQL)) {
			preparedStatement.setString(1, user.getOwnerName());
			preparedStatement.setString(2, user.getAadharNum());
			preparedStatement.setString(3, user.getKmsRan());
			preparedStatement.setString(4, user.getVehicleType());
			preparedStatement.setString(5, user.getModelName());
			preparedStatement.setString(6, user.getManufacName());
			preparedStatement.setString(7, user.getManufacDate());
			preparedStatement.setString(8, user.getChasisNum());
			preparedStatement.setString(9, user.getEngineNum());
			preparedStatement.setString(10, user.getColor());
			preparedStatement.setString(11, user.getSeatingCap());
			preparedStatement.setString(12, user.getNumOfWheels());
			preparedStatement.setString(13, user.getTypeOfFuel());
			preparedStatement.setString(14, "Not Accepted");
			preparedStatement.setString(15, user.getInsurancePolicyNum());
			preparedStatement.setString(16, user.getInsuranceCompany());
			preparedStatement.setString(17, user.getPermVehicleNum());
			preparedStatement.setString(18, user.getRegExpiryDate());
			preparedStatement.setString(19, "Not Yet Registered");
			preparedStatement.setString(20, "Not Yet Registered");
			preparedStatement.setString(21, "Not Yet Allocated");
			preparedStatement.setString(22, user.getRegPayment());
			preparedStatement.setString(23, user.getPUCNo());
			preparedStatement.setString(24, user.getPUCissueDt());
			preparedStatement.setString(25, user.getPUCexpDt());

			System.out.println(preparedStatement);
			preparedStatement.executeUpdate();
			
		} catch (SQLException e) {
			printSQLException(e);
		}
	}

	public User selectUser(int id) {
		User user = null;
		// Step 1: Establishing a Connection
		try (Connection connection = getConnection();
				// Step 2:Create a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER_BY_ID);) {
			preparedStatement.setInt(1, id);
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			while (rs.next()) {
				String ownerName = rs.getString("ownerName");
				String aadharNum = rs.getString("aadharNum");
				String tempNum = rs.getString("tempNum");
				String vehicleType = rs.getString("vehicleType");
				String modelName = rs.getString("modelName");
				String manufacName = rs.getString("manufacName");
				String manufacDate = rs.getString("manufacDate");
				String chasisNum = rs.getString("chasisNum");
				String engineNum = rs.getString("engineNum");
				String color = rs.getString("color");
				String seatingCap = rs.getString("seatingCap");
				String numOfWheels = rs.getString("numOfWheels");
				String typeOfFuel = rs.getString("typeOfFuel");
				String status = rs.getString("status");
				String insurancePolicyNum = rs.getString("insurancePolicyNum");
				String insuranceCompany = rs.getString("insuranceCompany");
				String permVehicleNum = rs.getString("permVehicleNum");
				String regDate = rs.getString("regDate");
				String regEndDate = rs.getString("regEndDate");
				String amount = rs.getString("taxpaymentPlusregpayment");

				user = new User (id,ownerName, aadharNum, tempNum, vehicleType, modelName, manufacName, manufacDate, chasisNum, engineNum, color, seatingCap, numOfWheels, typeOfFuel,status, insurancePolicyNum, insuranceCompany,permVehicleNum,regDate,regEndDate,amount);
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return user;
	}
	
	
	public User selectOldUserbyownernameandid(int id, String ownerName) {
		User user = null;
		// Step 1: Establishing a Connection
		try (Connection connection = getConnection();
				// Step 2:Create a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_OLDVEHICLE_BY_OWNER_AND_ID);) {
			preparedStatement.setString(1, ownerName);
			preparedStatement.setInt(2, id);

			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			while (rs.next()) {
				String ownerNamelll = rs.getString("ownerName");
				String aadharNum = rs.getString("aadharNum");
				String kmsRan = rs.getString("kmsRan");
				String vehicleType = rs.getString("vehicleType");
				String modelName = rs.getString("modelName");
				String manufacName = rs.getString("manufacName");
				String manufacDate = rs.getString("manufacDate");
				String chasisNum = rs.getString("chasisNum");
				String engineNum = rs.getString("engineNum");
				String color = rs.getString("color");
				String seatingCap = rs.getString("seatingCap");
				String numOfWheels = rs.getString("numOfWheels");
				String typeOfFuel = rs.getString("typeOfFuel");
				String status = rs.getString("status");
				String insurancePolicyNum = rs.getString("insurancePolicyNum");
				String insuranceCompany = rs.getString("insuranceCompany");
				String permVehicleNum = rs.getString("permVehicleNum");
				
				
				String regExpiryDate = rs.getString("regExpiryDate");
				String newRegDate = rs.getString("newRegDate");
				String newRegEndDate = rs.getString("newRegEndDate");
				String newPermVehicleNum  = rs.getString("newPermVehicleNum");
				String regPayment  = rs.getString("regPayment");
				String PUCNo  = rs.getString("PUCNo");
				String PUCIssueDt  = rs.getString("PUCIssueDt");
				String PUCexpDt  = rs.getString("PUCexpDt");
				

				user = new User (id,ownerNamelll, aadharNum, kmsRan, vehicleType, modelName, manufacName, manufacDate, chasisNum, engineNum, color, seatingCap, numOfWheels, typeOfFuel,status, insurancePolicyNum, insuranceCompany,permVehicleNum, regExpiryDate, newRegDate, newRegEndDate, regPayment, PUCNo, PUCIssueDt, PUCexpDt, newPermVehicleNum);
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return user;
	}
	
	
	
	public User selectUserbyownernameandid(int id, String ownerName) {
		User user = null;
		// Step 1: Establishing a Connection
		try (Connection connection = getConnection();
				// Step 2:Create a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_VEHICLE_BY_OWNER_AND_ID);) {
			preparedStatement.setString(1, ownerName);
			preparedStatement.setInt(2, id);

			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			while (rs.next()) {
				String ownerNamela = rs.getString("ownerName");
				String aadharNum = rs.getString("aadharNum");
				String tempNum = rs.getString("tempNum");
				String vehicleType = rs.getString("vehicleType");
				String modelName = rs.getString("modelName");
				String manufacName = rs.getString("manufacName");
				String manufacDate = rs.getString("manufacDate");
				String chasisNum = rs.getString("chasisNum");
				String engineNum = rs.getString("engineNum");
				String color = rs.getString("color");
				String seatingCap = rs.getString("seatingCap");
				String numOfWheels = rs.getString("numOfWheels");
				String typeOfFuel = rs.getString("typeOfFuel");
				String status = rs.getString("status");
				String insurancePolicyNum = rs.getString("insurancePolicyNum");
				String insuranceCompany = rs.getString("insuranceCompany");
				String permVehicleNum = rs.getString("permVehicleNum");
				String regDate = rs.getString("regDate");
				String regEndDate = rs.getString("regEndDate");
				String amount = rs.getString("taxpaymentPlusregpayment");

				user = new User (id,ownerNamela, aadharNum, tempNum, vehicleType, modelName, manufacName, manufacDate, chasisNum, engineNum, color, seatingCap, numOfWheels, typeOfFuel,status, insurancePolicyNum, insuranceCompany,permVehicleNum,regDate,regEndDate,amount);
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return user;
	}
	public User selectOldUser(int id) {
		User user = null;
		// Step 1: Establishing a Connection
		try (Connection connection = getConnection();
				// Step 2:Create a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_OLDUSER_BY_ID);) {
			preparedStatement.setInt(1, id);
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			while (rs.next()) {
				String ownerName = rs.getString("ownerName");
				String aadharNum = rs.getString("aadharNum");
				String kmsRan = rs.getString("kmsRan");
				String vehicleType = rs.getString("vehicleType");
				String modelName = rs.getString("modelName");
				String manufacName = rs.getString("manufacName");
				String manufacDate = rs.getString("manufacDate");
				String chasisNum = rs.getString("chasisNum");
				String engineNum = rs.getString("engineNum");
				String color = rs.getString("color");
				String seatingCap = rs.getString("seatingCap");
				String numOfWheels = rs.getString("numOfWheels");
				String typeOfFuel = rs.getString("typeOfFuel");
				String status = rs.getString("status");
				String insurancePolicyNum = rs.getString("insurancePolicyNum");
				String insuranceCompany = rs.getString("insuranceCompany");
				String permVehicleNum = rs.getString("permVehicleNum");
				
				
				String regExpiryDate = rs.getString("regExpiryDate");
				String newRegDate = rs.getString("newRegDate");
				String newRegEndDate = rs.getString("newRegEndDate");
				String newPermVehicleNum  = rs.getString("newPermVehicleNum");
				String regPayment  = rs.getString("regPayment");
				String PUCNo  = rs.getString("PUCNo");
				String PUCIssueDt  = rs.getString("PUCIssueDt");
				String PUCexpDt  = rs.getString("PUCexpDt");
				

				user = new User (id,ownerName, aadharNum, kmsRan, vehicleType, modelName, manufacName, manufacDate, chasisNum, engineNum, color, seatingCap, numOfWheels, typeOfFuel,status, insurancePolicyNum, insuranceCompany,permVehicleNum, regExpiryDate, newRegDate, newRegEndDate, regPayment, PUCNo, PUCIssueDt, PUCexpDt, newPermVehicleNum);
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return user;
	}
	
	
	
	

	public List<User> selectAllUsers() {

		// using try-with-resources to avoid closing resources (boiler plate code)
		List<User> users = new ArrayList<>();
		// Step 1: Establishing a Connection
		try (Connection connection = getConnection();

				// Step 2:Create a statement using connection object
			PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_USERS);) {
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			while (rs.next()) {
				int id = rs.getInt("id");
				String ownerName = rs.getString("ownerName");
				String aadharNum = rs.getString("aadharNum");
				String tempNum = rs.getString("tempNum");
				String vehicleType = rs.getString("vehicleType");
				String modelName = rs.getString("modelName");
				String manufacName = rs.getString("manufacName");
				String manufacDate = rs.getString("manufacDate");
				String chasisNum = rs.getString("chasisNum");
				String engineNum = rs.getString("engineNum");
				String color = rs.getString("color");
				String seatingCap = rs.getString("seatingCap");
				String numOfWheels = rs.getString("numOfWheels");
				String typeOfFuel = rs.getString("typeOfFuel");
				String status = rs.getString("status");
				String insurancePolicyNum = rs.getString("insurancePolicyNum");
				String insuranceCompany = rs.getString("insuranceCompany");
				String permVehicleNum = rs.getString("permVehicleNum");
				String regDate = rs.getString("regDate");
				String regEndDate = rs.getString("regEndDate");
				String amount = rs.getString("taxpaymentPlusregpayment");
				
				users.add(new User(id,ownerName, aadharNum, tempNum, vehicleType, modelName, manufacName, manufacDate, chasisNum, engineNum, color, seatingCap, numOfWheels, typeOfFuel,status, insurancePolicyNum, insuranceCompany,permVehicleNum,regDate,regEndDate,amount));
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return users;
	}

	public List<User> selectAllOldUsers() {

		// using try-with-resources to avoid closing resources (boiler plate code)
		List<User> users = new ArrayList<>();
		// Step 1: Establishing a Connection
		try (Connection connection = getConnection();

				// Step 2:Create a statement using connection object
			PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_OLDUSERS);) {
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			while (rs.next()) {
				int id = rs.getInt("id");
				String ownerName = rs.getString("ownerName");
				String aadharNum = rs.getString("aadharNum");
				String kmsRan = rs.getString("kmsRan");
				String vehicleType = rs.getString("vehicleType");
				String modelName = rs.getString("modelName");
				String manufacName = rs.getString("manufacName");
				String manufacDate = rs.getString("manufacDate");
				String chasisNum = rs.getString("chasisNum");
				String engineNum = rs.getString("engineNum");
				String color = rs.getString("color");
				String seatingCap = rs.getString("seatingCap");
				String numOfWheels = rs.getString("numOfWheels");
				String typeOfFuel = rs.getString("typeOfFuel");
				String status = rs.getString("status");
				String insurancePolicyNum = rs.getString("insurancePolicyNum");
				String insuranceCompany = rs.getString("insuranceCompany");
				String permVehicleNum = rs.getString("permVehicleNum");
				

				String regExpiryDate = rs.getString("regExpiryDate");
				String newRegDate = rs.getString("newRegDate");
				String newRegEndDate = rs.getString("newRegEndDate");
				String newPermVehicleNum  = rs.getString("newPermVehicleNum");
				String regPayment  = rs.getString("regPayment");
				String PUCNo  = rs.getString("PUCNo");
				String PUCIssueDt  = rs.getString("PUCIssueDt");
				String PUCexpDt  = rs.getString("PUCexpDt");
				
				
				
				users.add(new User(id,ownerName, aadharNum, kmsRan, vehicleType, modelName, manufacName, manufacDate, chasisNum, engineNum, color, seatingCap, numOfWheels, typeOfFuel,status, insurancePolicyNum, insuranceCompany,permVehicleNum, regExpiryDate, newRegDate, newRegEndDate, regPayment, PUCNo, PUCIssueDt, PUCexpDt , newPermVehicleNum));
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return users;
	}

	

	public List<User> selectVehiclesByOwner(String ownerName) {

		// using try-with-resources to avoid closing resources (boiler plate code)
		List<User> users = new ArrayList<>();
		// Step 1: Establishing a Connection
		try (Connection connection = getConnection();
				
				// Step 2:Create a statement using connection object
			PreparedStatement preparedStatement = connection.prepareStatement(SELECT_VEHICLES_BY_OWNER);) {
			preparedStatement.setString(1, ownerName);
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			while (rs.next()) {
				int id = rs.getInt("id");
				String ownerName1 = rs.getString("ownerName");
				String aadharNum = rs.getString("aadharNum");
				String tempNum = rs.getString("tempNum");
				String vehicleType = rs.getString("vehicleType");
				String modelName = rs.getString("modelName");
				String manufacName = rs.getString("manufacName");
				String manufacDate = rs.getString("manufacDate");
				String chasisNum = rs.getString("chasisNum");
				String engineNum = rs.getString("engineNum");
				String color = rs.getString("color");
				String seatingCap = rs.getString("seatingCap");
				String numOfWheels = rs.getString("numOfWheels");
				String typeOfFuel = rs.getString("typeOfFuel");
				String status = rs.getString("status");
				String insurancePolicyNum = rs.getString("insurancePolicyNum");
				String insuranceCompany = rs.getString("insuranceCompany");
				String permVehicleNum = rs.getString("permVehicleNum");
				String regDate = rs.getString("regDate");
				String regEndDate = rs.getString("regEndDate");
				String amount = rs.getString("taxpaymentPlusregpayment");
				
				users.add(new User(id,ownerName1, aadharNum, tempNum, vehicleType, modelName, manufacName, manufacDate, chasisNum, engineNum, color, seatingCap, numOfWheels, typeOfFuel,status, insurancePolicyNum, insuranceCompany,permVehicleNum,regDate,regEndDate,amount));
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		System.out.println(users);

		return users;
	}
	
	public List<User> selectOldVehiclesByOwner(String ownerName) {

		// using try-with-resources to avoid closing resources (boiler plate code)
		List<User> users = new ArrayList<>();
		// Step 1: Establishing a Connection
		try (Connection connection = getConnection();
				
				// Step 2:Create a statement using connection object
			PreparedStatement preparedStatement = connection.prepareStatement(SELECT_OLDVEHICLES_BY_OWNER);) {
			preparedStatement.setString(1, ownerName);
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			while (rs.next()) {
				int id = rs.getInt("id");
				String ownerName1 = rs.getString("ownerName");
				String aadharNum = rs.getString("aadharNum");
				String kmsRan = rs.getString("kmsRan");
				String vehicleType = rs.getString("vehicleType");
				String modelName = rs.getString("modelName");
				String manufacName = rs.getString("manufacName");
				String manufacDate = rs.getString("manufacDate");
				String chasisNum = rs.getString("chasisNum");
				String engineNum = rs.getString("engineNum");
				String color = rs.getString("color");
				String seatingCap = rs.getString("seatingCap");
				String numOfWheels = rs.getString("numOfWheels");
				String typeOfFuel = rs.getString("typeOfFuel");
				String status = rs.getString("status");
				String insurancePolicyNum = rs.getString("insurancePolicyNum");
				String insuranceCompany = rs.getString("insuranceCompany");
				String permVehicleNum = rs.getString("permVehicleNum");
				String regExpiryDate = rs.getString("regExpiryDate");
				String newRegDate = rs.getString("newRegDate");
				String newRegEndDate = rs.getString("newRegEndDate");
				String newPermVehicleNum = rs.getString("newPermVehicleNum");
				String regPayment = rs.getString("regPayment");
				String PUCNo = rs.getString("PUCNo");
				String PUCIssueDt = rs.getString("PUCissueDt");
				String PUCexpDt = rs.getString("PUCexpDt");
				
				users.add(new User(id,ownerName1, aadharNum, kmsRan, vehicleType, modelName, manufacName, manufacDate, chasisNum, engineNum, color, seatingCap, numOfWheels, typeOfFuel,status, insurancePolicyNum, insuranceCompany,permVehicleNum,regExpiryDate, newRegDate, newRegEndDate, newPermVehicleNum, regPayment, PUCNo, PUCIssueDt, PUCexpDt));
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		System.out.println(users);

		return users;
	}
	
	
	
	
	public boolean deleteUser(int id) throws SQLException {
		boolean rowDeleted;
		try (Connection connection = getConnection();
				PreparedStatement statement = connection.prepareStatement(DELETE_USERS_SQL);) {
			statement.setInt(1, id);
			rowDeleted = statement.executeUpdate() > 0;
		}
		return rowDeleted;
	}

	

	public boolean deleteOldUser(int id) throws SQLException {
		boolean rowDeleted;
		try (Connection connection = getConnection();
				PreparedStatement statement = connection.prepareStatement(DELETE_OLDUSERS_SQL);) {
			statement.setInt(1, id);
			rowDeleted = statement.executeUpdate() > 0;
		}
		return rowDeleted;
	}
	
	
	public boolean updateUser(User user) throws SQLException {
		boolean rowUpdated;
		try (Connection connection = getConnection();
				PreparedStatement statement = connection.prepareStatement(UPDATE_USERS_SQL);) {
		
			
			statement.setString(1, user.getStatus());
	
			statement.setString(2, user.getPermVehicleNum());
			statement.setString(3, user.getRegDate());
			statement.setString(4, user.getRegEndDate());

			statement.setInt(5, user.getId());

			rowUpdated = statement.executeUpdate() > 0;
			System.out.println(statement);

		}
		return rowUpdated;
	}
	
	
	public boolean updateOldUser(User user) throws SQLException {
		boolean rowUpdated;
		try (Connection connection = getConnection();
				PreparedStatement statement = connection.prepareStatement(UPDATE_OLDUSERS_SQL);) {
		
			
	
			statement.setString(1, user.getStatus());
			statement.setString(2, user.getNewRegDate());
			statement.setString(3, user.getNewRegEndDate());
			statement.setString(4, user.getNewPermVehicleNum());
			statement.setInt(5, user.getId());

			rowUpdated = statement.executeUpdate() > 0;
			System.out.println(statement);

		}
		return rowUpdated;
	}
	
	
//	public boolean updatePaymentOld(User user) throws SQLException {
//		boolean rowUpdated;
//		try (Connection connection = getConnection();
//				PreparedStatement statement = connection.prepareStatement(UPDATE_PAYMENT_OLD);) {
//		
//			
//			statement.setString(1, user.getAmount());
//			
//
//			statement.setInt(2, user.getId());
//
//			rowUpdated = statement.executeUpdate() > 0;
//			System.out.println(statement);
//
//		}
//		return rowUpdated;
//	}
//
//	public boolean updatePaymentNew(User user) throws SQLException {
//		boolean rowUpdated;
//		try (Connection connection = getConnection();
//				PreparedStatement statement = connection.prepareStatement(UPDATE_PAYMENT_NEW);) {
//		
//			
//			statement.setString(1, user.getAmount());
//			
//
//			statement.setInt(2, user.getId());
//
//			rowUpdated = statement.executeUpdate() > 0;
//			System.out.println(statement);
//
//		}
//		return rowUpdated;
//	}

	private void printSQLException(SQLException ex) {
		for (Throwable e : ex) {
			if (e instanceof SQLException) {
				e.printStackTrace(System.err);
				System.err.println("SQLState: " + ((SQLException) e).getSQLState());
				System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
				System.err.println("Message: " + e.getMessage());
				Throwable t = ex.getCause();
				while (t != null) {
					System.out.println("Cause: " + t);
					t = t.getCause();
				}
			}
		}
	}

}
