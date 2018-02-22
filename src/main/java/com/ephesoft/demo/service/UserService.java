package com.ephesoft.demo.service;

import com.ephesoft.demo.model.User;

import java.util.List;

/**
 * Created by JitendraSingh on 30/01/18.
 */
public interface UserService {

    User findById(long id);

    User findByName(String name);

    void saveUser(User user);

    void updateUser(User user);

    void deleteUserById(long id);

    List<User> findAllUsers();

    void deleteAllUsers();

    boolean isUserExist(User user);
}
