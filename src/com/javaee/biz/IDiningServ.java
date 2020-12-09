package com.javaee.biz;

import java.util.ArrayList;

public interface IDiningServ {
	public ArrayList findDining4PageList(int pageNo, int pageSize);
	public int getTotalRecords();
}
