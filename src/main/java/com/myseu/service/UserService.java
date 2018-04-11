package com.myseu.service;

import com.myseu.domain.User;


public interface UserService {
    boolean login(User user);
    boolean register(User user);
}
