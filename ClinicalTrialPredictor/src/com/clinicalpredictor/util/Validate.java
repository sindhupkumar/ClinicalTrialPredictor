package com.clinicalpredictor.util;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.StringTokenizer;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Validate {
	public int txt_validate(String path)
	{
		BufferedReader br = null;
		try {
			String sCurrentLine;
			br = new BufferedReader(new FileReader(path));
			// Checking and calculating number of columns..
			sCurrentLine = br.readLine();
			StringTokenizer st = new StringTokenizer(sCurrentLine);
			int cols = st.countTokens();
			String y = st.nextToken();
			if (!y.equals("y")){
				return 0;
			} else {
				  while(st.hasMoreTokens()) {
					    String colm = st.nextToken();
					    if (!(colm.matches("\\d+"))) {
						return 0;
					}else
						continue;
				  }
			   }
			// Checking data format from second line(Row)
			while ((sCurrentLine = br.readLine()) != null) {
				StringTokenizer st1 = new StringTokenizer(sCurrentLine);
				// String row;
				if (cols == st1.countTokens()) {
					String s = st1.nextToken();
					if (!(s.equals("1") || (s.equals("0")))) {
						return 0;
					}
					while (st1.hasMoreTokens()) {
						String colm = st1.nextToken();
						if (!(colm.matches("\\d+(\\.\\d+)*"))) {
							return 0;
						} else
							continue;
					}
				} else {
					return 0;
				}
			}
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				if (br != null)
					br.close();	
			} catch (IOException ex) {
				ex.printStackTrace();
			}
		}
		return 1;
	}
}
