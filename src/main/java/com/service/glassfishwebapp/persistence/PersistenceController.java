package com.service.glassfishwebapp.persistence;

import com.service.glassfishwebapp.logic.User;

import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class PersistenceController {
    UserJpaController usuJpa = new UserJpaController();

    public void createUser(User usu) {
        usuJpa.create(usu);
    }

    public List<User> getUsers() {
        return usuJpa.getUsers();
    }

    public void deleteUser(int idDelete) {
        try {
            usuJpa.destroy(idDelete);
        } catch (Exception ex) {
            Logger.getLogger(PersistenceController.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public User getUser(int idUpdate) {
        return usuJpa.getUser(idUpdate);
    }
}
