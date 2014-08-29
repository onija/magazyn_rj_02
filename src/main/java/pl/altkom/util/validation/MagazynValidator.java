package pl.altkom.util.validation;


import org.springframework.validation.Errors;
import pl.altkom.magazyn.model.Towar;


import pl.altkom.util.StringUtils;

public class MagazynValidator {
	
	public boolean sprawdzWielkaLitere(String n){
		if(Character.isLowerCase(n.charAt(0))) return true;
		return false;
	}	
	
	public void validate(Towar towar, Errors error){
		 
		if(StringUtils.isEmpty(towar.getNazwa())){
			error.rejectValue("nazwa", "required");
		}else if(sprawdzWielkaLitere(towar.getNazwa())){
			error.rejectValue("nazwa", "duzaLit");
		}
		
		if(StringUtils.isEmpty(towar.getOpis())){
			error.rejectValue("opis", "required");
		}else if(sprawdzWielkaLitere(towar.getOpis())){
			error.rejectValue("opis", "duzaLit");
		} 

//		String r = "^\\w+@{1}[a-z]+\\.{1}[a-z]+$";
//		Pattern pattern = Pattern.compile(r);
//		if(StringUtils.isEmpty(odbiorca.getMail())){
//			error.rejectValue("mail", "required");
//		}else if(!odbiorca.getMail().matches(r)){
//			error.rejectValue("mail", "zlyEmail");
//		}
	}
}
