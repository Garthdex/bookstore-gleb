package com.concretepage.dao;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.transaction.annotation.Transactional;

import com.concretepage.entity.UserInfo;
@Transactional
public class UserDAO {
	@Autowired
	private HibernateTemplate hibernateTemplate;

	public UserInfo getActiveUser(String userName) {
		UserInfo activeUserInfo = new UserInfo();
		List<?> list = hibernateTemplate.find("FROM UserInfo WHERE userName=?",
				userName);
		if(!list.isEmpty()) {
			activeUserInfo = (UserInfo)list.get(0);
		}
		return activeUserInfo;
	}
}