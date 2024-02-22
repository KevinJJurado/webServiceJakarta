package com.service.glassfishwebapp.persistence;

import com.service.glassfishwebapp.logic.User;

import java.util.List;

public class PersistenceController {
    UserJpaController usuJpa = new UserJpaController();

    public void createUser(User usu) {
        usuJpa.create(usu);
    }

    public List<User> getUsers() {
        return usuJpa.getUsers();
    }
}
