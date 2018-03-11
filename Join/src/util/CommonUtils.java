package util;

import shoes.ShoesDTO;

public class CommonUtils {
	public static boolean isEmpty(String str){
		if(str == null || str.length() == 0) return true;
		else return false;
	}

	public static boolean isEmpty(ShoesDTO result) {
		if(result!=null) return false; 
	
		
		else return true;
	}
}
