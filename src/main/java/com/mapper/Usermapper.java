package com.mapper;

import com.pojo.User;

public interface Usermapper {
    public void register(User user);
    public User selectUserByName(String username);
}
