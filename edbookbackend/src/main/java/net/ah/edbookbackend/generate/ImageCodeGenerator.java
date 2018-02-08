package net.ah.edbookbackend.generate;

import java.security.MessageDigest;

public class ImageCodeGenerator {
	public String getImageCode(int bookId, String bookName, int categoryId) {
		String bookNamWithoutSpaces = bookName.replaceAll("\\s+", "");
		return Encrypto(bookId + bookNamWithoutSpaces + categoryId);
	}

	private String Encrypto(String str) {
		StringBuffer hexString = new StringBuffer();
		try {
			MessageDigest md = MessageDigest.getInstance("SHA-256");
			md.update(str.toString().getBytes());
			byte byteData[] = md.digest();
			// convert the byte to hex format
			for (int i = 0; i < byteData.length; i++) {
				String hex = Integer.toHexString(0xff & byteData[i]);
				if (hex.length() == 1)
					hexString.append('0');
				hexString.append(hex);
			}
		} catch (Exception e) {
		}
		return hexString.toString();
	}
}
