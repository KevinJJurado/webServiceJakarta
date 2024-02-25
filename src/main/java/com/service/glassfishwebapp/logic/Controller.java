package com.service.glassfishwebapp.logic;

import com.service.glassfishwebapp.persistence.PersistenceController;

import java.util.List;

public class Controller {
    PersistenceController persisControl = new PersistenceController();

    public void createUser (User usu) {
        persisControl.createUser(usu);
    }

    public List<User> getUsers() {
        return persisControl.getUsers();
    }

    public void deleteUser(int idDelete) {
        persisControl.deleteUser(idDelete);
    }

    public User getUser(int idUpdate) {
        return persisControl.getUser(idUpdate);
    }

    public void updateUser(User usu) {
        persisControl.updateUser(usu);
    }
}
