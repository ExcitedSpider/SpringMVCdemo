package com.myseu.domain;

import java.sql.Date;

public class User {
    private int id;
    private String uname;
    private String upass;
    private String reupass;
    private int gender = -1;
    private Date birthday;
    private String contact;
    private String remember;

    public  User() {

    }

    public User(int id, String uname, String upass, int gender, Date birthday,String contact)
    {
        this.id = id;
        this.uname=uname;
        this.upass=upass;
        this.gender=gender;
        this.birthday=birthday;
        this.contact=contact;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getUpass() {
        return upass;
    }

    public void setUpass(String upass) {
        this.upass = upass;
    }

    public String getReupass() {
        return reupass;
    }

    public void setReupass(String reupass) {
        this.reupass = reupass;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getGender() {
        return gender;
    }

    public void setGender(int gender) {
        this.gender = gender;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + uname + '\'' +
                ", password='" + upass + '\'' +
                ", gender=" + gender +
                ", birthday=" + birthday +
                ", contact='" + contact + '\'' +
                '}';
    }


    public String getRemember() {
        return remember;
    }

    public void setRemember(String remember) {
        this.remember = remember;
    }
}
