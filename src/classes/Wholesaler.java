package classes;

public class Wholesaler extends User {

	//constructor
	public Wholesaler(int id, String cName, String email, String brn, String password, String address, String telephone, String type) {
		super.setId(id);
		super.setcName(cName);
		super.setEmail(email);
		super.setBrn(brn);
		super.setPassword(password);
		super.setAddress(address);
		super.setTelephone(telephone);
		super.setType(type);
	}
}
