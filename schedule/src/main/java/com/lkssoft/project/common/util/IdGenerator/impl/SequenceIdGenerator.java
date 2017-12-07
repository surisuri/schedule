package com.lkssoft.project.common.util.IdGenerator.impl;

import org.springframework.util.StringUtils;

import com.google.common.base.Strings;
import com.lkssoft.project.common.util.IdGenerator.SequenceGenerator;


public class SequenceIdGenerator implements SequenceGenerator {

	private String prefix;

	private int maxCiphers;

	public String getPrefix() {
		return prefix;
	}

	public void setPrefix(String prefix) {
		this.prefix = prefix;
	}

	public int getMaxCiphers() {
		return maxCiphers;
	}

	public void setMaxCiphers(int maxCiphers) {

		this.maxCiphers = maxCiphers;
	}

	public String generateSequenceId(String currentMaxSq) {
		int currentMaxSqInt = new Integer(currentMaxSq); // int 로 변경
		int newSqInt = currentMaxSqInt + 1;
		String newSq = String.valueOf(newSqInt);
		int zcout = getMaxCiphers() - newSq.length();
		String padding = Strings.repeat("0", zcout);
		String out = this.prefix + padding + newSq;
		return out;

	}

	public String generateSequenceId(String prefix, String currentMaxSq) {
		int currentMaxSqInt = 0;
		if (StringUtils.hasText(currentMaxSq)) {
			currentMaxSqInt = new Integer(currentMaxSq); // int 로 변경
		}

		int newSqInt = currentMaxSqInt + 1;
		String newSq = String.valueOf(newSqInt);
		int zcout = getMaxCiphers() - newSq.length();
		String padding = Strings.repeat("0", zcout);
		String out = prefix + padding + newSq;
		return out;
	}
}
