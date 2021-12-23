package net.javaguides.usermanagement.model;


public class User {
	//20 fields
		private int id;
		private String ownerName;
		private String aadharNum;
		private String tempNum;
		private String vehicleType;
		private String modelName;
		private String manufacName;
		private String manufacDate; 
		private String chasisNum;
		private String engineNum;
		private String color;
		private String seatingCap;
		private String numOfWheels;
		private String typeOfFuel;
		private String status;
		private String insurancePolicyNum;
		private String insuranceCompany;
		private String permVehicleNum;
		private String regDate;
		private String regEndDate;
		private String amount;
		
		private String kmsRan;
		private String regExpiryDate;
		private String newRegDate;
		private String newRegEndDate;
		private String regPayment;
		private String PUCNo;
		private String PUCissueDt;
		private String PUCexpDt;
		private String newPermVehicleNum;
		
		
		
		
		
		
		
		public User(String ownerName, String aadharNum, String kmsRan, String vehicleType, String modelName, String manufacName,
				String manufacDate, String chasisNum, String engineNum, String color, String seatingCap,
				String numOfWheels, String typeOfFuel, String status, String insurancePolicyNum,
				String insuranceCompany, String permVehicleNum,  String regExpiryDate, String newRegDate,
				String newRegEndDate, String regPayment, String pUCNo, String pUCissueDt, String pUCexpDt,
				String newPermVehicleNum) {
			super();
			this.ownerName = ownerName;
			this.aadharNum = aadharNum;
			this.vehicleType = vehicleType;
			this.modelName = modelName;
			this.manufacName = manufacName;
			this.manufacDate = manufacDate;
			this.chasisNum = chasisNum;
			this.engineNum = engineNum;
			this.color = color;
			this.seatingCap = seatingCap;
			this.numOfWheels = numOfWheels;
			this.typeOfFuel = typeOfFuel;
			this.status = status;
			this.insurancePolicyNum = insurancePolicyNum;
			this.insuranceCompany = insuranceCompany;
			this.permVehicleNum = permVehicleNum;
			this.kmsRan = kmsRan;
			this.regExpiryDate = regExpiryDate;
			this.newRegDate = newRegDate;
			this.newRegEndDate = newRegEndDate;
			this.regPayment = regPayment;
			this.PUCNo = pUCNo;
			this.PUCissueDt = pUCissueDt;
			this.PUCexpDt = pUCexpDt;
			this.newPermVehicleNum = newPermVehicleNum;
		}
		public User(int id, String ownerName, String aadharNum, String kmsRan, String vehicleType, String modelName,
				String manufacName, String manufacDate, String chasisNum, String engineNum, String color,
				String seatingCap, String numOfWheels, String typeOfFuel, String status, String insurancePolicyNum,
				String insuranceCompany, String permVehicleNum, String regExpiryDate, String newRegDate,
				String newRegEndDate, String regPayment, String pUCNo, String pUCissueDt, String pUCexpDt,
				String newPermVehicleNum) {
			super();
			this.id = id;
			this.ownerName = ownerName;
			this.aadharNum = aadharNum;
			this.vehicleType = vehicleType;
			this.modelName = modelName;
			this.manufacName = manufacName;
			this.manufacDate = manufacDate;
			this.chasisNum = chasisNum;
			this.engineNum = engineNum;
			this.color = color;
			this.seatingCap = seatingCap;
			this.numOfWheels = numOfWheels;
			this.typeOfFuel = typeOfFuel;
			this.status = status;
			this.insurancePolicyNum = insurancePolicyNum;
			this.insuranceCompany = insuranceCompany;
			this.permVehicleNum = permVehicleNum;
			this.kmsRan = kmsRan;
			this.regExpiryDate = regExpiryDate;
			this.newRegDate = newRegDate;
			this.newRegEndDate = newRegEndDate;
			this.regPayment = regPayment;
			this.PUCNo = pUCNo;
			this.PUCissueDt = pUCissueDt;
			this.PUCexpDt = pUCexpDt;
			this.newPermVehicleNum = newPermVehicleNum;
		}
		public String getNewPermVehicleNum() {
			return newPermVehicleNum;
		}
		public void setNewPermVehicleNum(String newPermVehicleNum) {
			this.newPermVehicleNum = newPermVehicleNum;
		}
		public String getKmsRan() {
			return kmsRan;
		}
		public void setKmsRan(String kmsRan) {
			this.kmsRan = kmsRan;
		}
		public String getRegExpiryDate() {
			return regExpiryDate;
		}
		public void setRegExpiryDate(String regExpiryDate) {
			this.regExpiryDate = regExpiryDate;
		}
		public String getNewRegDate() {
			return newRegDate;
		}
		public void setNewRegDate(String newRegDate) {
			this.newRegDate = newRegDate;
		}
		public String getNewRegEndDate() {
			return newRegEndDate;
		}
		public void setNewRegEndDate(String newRegEndDate) {
			this.newRegEndDate = newRegEndDate;
		}
		public String getRegPayment() {
			return regPayment;
		}
		public void setRegPayment(String regPayment) {
			this.regPayment = regPayment;
		}
		public String getPUCNo() {
			return PUCNo;
		}
		public void setPUCNo(String pUCNo) {
			PUCNo = pUCNo;
		}
		public String getPUCissueDt() {
			return PUCissueDt;
		}
		public void setPUCissueDt(String pUCissueDt) {
			PUCissueDt = pUCissueDt;
		}
		public String getPUCexpDt() {
			return PUCexpDt;
		}
		public void setPUCexpDt(String pUCexpDt) {
			PUCexpDt = pUCexpDt;
		}
		public User(int id, String amount) {
			super();
			this.id = id;
			this.amount = amount;
		}
		public User(String ownerName, String aadharNum, String tempNum, String vehicleType, String modelName,
				String manufacName, String manufacDate, String chasisNum, String engineNum, String color,
				String seatingCap, String numOfWheels, String typeOfFuel, String status, String insurancePolicyNum,
				String insuranceCompany, String permVehicleNum, String regDate, String regEndDate, String amount) {
			super();
			this.ownerName = ownerName;
			this.aadharNum = aadharNum;
			this.tempNum = tempNum;
			this.vehicleType = vehicleType;
			this.modelName = modelName;
			this.manufacName = manufacName;
			this.manufacDate = manufacDate;
			this.chasisNum = chasisNum;
			this.engineNum = engineNum;
			this.color = color;
			this.seatingCap = seatingCap;
			this.numOfWheels = numOfWheels;
			this.typeOfFuel = typeOfFuel;
			this.status = status;
			this.insurancePolicyNum = insurancePolicyNum;
			this.insuranceCompany = insuranceCompany;
			this.permVehicleNum = permVehicleNum;
			this.regDate = regDate;
			this.regEndDate =regEndDate;
			this.amount = amount;
		}
		public User(int id, String ownerName, String aadharNum, String tempNum, String vehicleType, String modelName,
				String manufacName, String manufacDate, String chasisNum, String engineNum, String color,
				String seatingCap, String numOfWheels, String typeOfFuel, String status, String insurancePolicyNum,
				String insuranceCompany, String permVehicleNum, String regDate,String regEndDate, String amount) {
			super();
			this.id = id;
			this.ownerName = ownerName;
			this.aadharNum = aadharNum;
			this.tempNum = tempNum;
			this.vehicleType = vehicleType;
			this.modelName = modelName;
			this.manufacName = manufacName;
			this.manufacDate = manufacDate;
			this.chasisNum = chasisNum;
			this.engineNum = engineNum;
			this.color = color;
			this.seatingCap = seatingCap;
			this.numOfWheels = numOfWheels;
			this.typeOfFuel = typeOfFuel;
			this.status = status;
			this.insurancePolicyNum = insurancePolicyNum;
			this.insuranceCompany = insuranceCompany;
			this.permVehicleNum = permVehicleNum;
			this.regDate = regDate;
			this.regEndDate =regEndDate;
			this.amount = amount;
		}
		public User(int id, String ownerName, String aadharNum, String tempNum, String vehicleType, String modelName,
				String manufacName, String manufacDate, String chasisNum, String engineNum, String color,
				String seatingCap, String numOfWheels, String typeOfFuel, String status, String insurancePolicyNum,
				String insuranceCompany, String permVehicleNum, String regDate, String regEndDate) {
			super();
			this.id = id;
			this.ownerName = ownerName;
			this.aadharNum = aadharNum;
			this.tempNum = tempNum;
			this.vehicleType = vehicleType;
			this.modelName = modelName;
			this.manufacName = manufacName;
			this.manufacDate = manufacDate;
			this.chasisNum = chasisNum;
			this.engineNum = engineNum;
			this.color = color;
			this.seatingCap = seatingCap;
			this.numOfWheels = numOfWheels;
			this.typeOfFuel = typeOfFuel;
			this.status = status;
			this.insurancePolicyNum = insurancePolicyNum;
			this.insuranceCompany = insuranceCompany;
			this.permVehicleNum = permVehicleNum;
			this.regDate = regDate;
			this.regEndDate = regEndDate;
		}
		public String getAmount() {
			return amount;
		}
		public void setAmount(String amount) {
			this.amount = amount;
		}
		public String getRegEndDate() {
			return regEndDate;
		}
		public void setRegEndDate(String regEndDate) {
			this.regEndDate = regEndDate;
		}
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getOwnerName() {
			return ownerName;
		}
		public void setOwnerName(String ownerName) {
			this.ownerName = ownerName;
		}
		public String getAadharNum() {
			return aadharNum;
		}
		public void setAadharNum(String aadharNum) {
			this.aadharNum = aadharNum;
		}
		public String getTempNum() {
			return tempNum;
		}
		public void setTempNum(String tempNum) {
			this.tempNum = tempNum;
		}
		public String getVehicleType() {
			return vehicleType;
		}
		public void setVehicleType(String vehicleType) {
			this.vehicleType = vehicleType;
		}
		public String getModelName() {
			return modelName;
		}
		public void setModelName(String modelName) {
			this.modelName = modelName;
		}
		public String getManufacName() {
			return manufacName;
		}
		public void setManufacName(String manufacName) {
			this.manufacName = manufacName;
		}
		public String getManufacDate() {
			return manufacDate;
		}
		public void setManufacDate(String manufacDate) {
			this.manufacDate = manufacDate;
		}
		public String getChasisNum() {
			return chasisNum;
		}
		public void setChasisNum(String chasisNum) {
			this.chasisNum = chasisNum;
		}
		public String getEngineNum() {
			return engineNum;
		}
		public void setEngineNum(String engineNum) {
			this.engineNum = engineNum;
		}
		public String getColor() {
			return color;
		}
		public void setColor(String color) {
			this.color = color;
		}
		public String getSeatingCap() {
			return seatingCap;
		}
		public void setSeatingCap(String seatingCap) {
			this.seatingCap = seatingCap;
		}
		public String getNumOfWheels() {
			return numOfWheels;
		}
		public void setNumOfWheels(String numOfWheels) {
			this.numOfWheels = numOfWheels;
		}
		public String getTypeOfFuel() {
			return typeOfFuel;
		}
		public void setTypeOfFuel(String typeOfFuel) {
			this.typeOfFuel = typeOfFuel;
		}
		public String getStatus() {
			return status;
		}
		public void setStatus(String status) {
			this.status = status;
		}
		public String getInsurancePolicyNum() {
			return insurancePolicyNum;
		}
		public void setInsurancePolicyNum(String insurancePolicyNum) {
			this.insurancePolicyNum = insurancePolicyNum;
		}
		public String getInsuranceCompany() {
			return insuranceCompany;
		}
		public void setInsuranceCompany(String insuranceCompany) {
			this.insuranceCompany = insuranceCompany;
		}
		public String getPermVehicleNum() {
			return permVehicleNum;
		}
		public void setPermVehicleNum(String permVehicleNum) {
			this.permVehicleNum = permVehicleNum;
		}
		public String getRegDate() {
			return regDate;
		}
		public void setRegDate(String regDate) {
			this.regDate = regDate;
		}
		
		
		
		





	
	
}
