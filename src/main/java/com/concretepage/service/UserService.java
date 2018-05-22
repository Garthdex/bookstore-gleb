package com.concretepage.service;

import com.concretepage.dao.UserDAO;
import com.concretepage.entity.UserInfo;
import org.springframework.beans.factory.annotation.Autowired;

public class UserService {
    @Autowired
    UserDAO userDAO;

    public UserInfo getActiveUser(String userName) {
        return userDAO.getActiveUser(userName);
    }
}
