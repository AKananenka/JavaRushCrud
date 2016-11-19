package com.javarush.crudtest.dao;

import com.javarush.crudtest.model.User;

import java.util.Date;
import java.util.List;

public interface UserDao {
    void addUser(User user);
    void updateUser(User user);
    void removeUser(int id);
    User getUser(int id);
    List<User> getUsers(Long page);
    List<User> getUsers(String name);
    List<User> getUsers(int age);
    List<User> getUsers(Date dateCreated);
    List<User> getAdmins();
}
