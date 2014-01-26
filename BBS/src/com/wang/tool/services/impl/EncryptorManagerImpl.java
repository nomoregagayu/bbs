package com.wang.tool.services.impl;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.regex.Pattern;

import org.apache.commons.codec.binary.Base64;
import org.springframework.stereotype.Component;

import com.wang.tool.services.EncryptorManager;
@Component("encryptorManagerImpl")
public class EncryptorManagerImpl implements EncryptorManager {
	 private final static String ENCODING = "UTF-8"; 
	//apache commons codec
	@Override
	public String base64En(String userName) throws UnsupportedEncodingException {
		byte[] b = Base64.encodeBase64(userName.getBytes(ENCODING)); 
        return new String(b, ENCODING);
	}

	@Override
	public String md5En(String password) throws NoSuchAlgorithmException {
				MessageDigest md = MessageDigest.getInstance("MD5");
				md.update(password.getBytes());
				byte b[] = md.digest();
				int i;
				StringBuffer buf = new StringBuffer("");
				for (int offset = 0; offset < b.length; offset++) {
					i = b[offset];
					if (i < 0)
						i += 256;
					if (i < 16)
						buf.append("0");
					buf.append(Integer.toHexString(i));
				}
//				16位
		return buf.toString().substring(8, 24);
	}

	@Override
	public String base64De(String userName) throws UnsupportedEncodingException {
		byte[] b = Base64.decodeBase64(userName.getBytes(ENCODING)); 
        return new String(b, ENCODING); 
	}

}
