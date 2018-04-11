package com.myseu.domain;

import java.sql.Date;

public class Book {
    private int id = -1;
    private String bname;
    private String author;
    private int type = -1;
    private String publisher;
    private int borrower=-1;
    private Date dueDate;

    public Book(){

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getBname() {
        return bname;
    }

    public void setBname(String bname) {
        this.bname = bname;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public String getPublisher() {
        return publisher;
    }

    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }

    public int getBorrower() {
        return borrower;
    }

    public void setBorrower(int borrower) {
        this.borrower = borrower;
    }

    public Date getDueDate() {
        return dueDate;
    }

    public void setDueDate(Date dueDate) {
        this.dueDate = dueDate;
    }


    public Book(int id, String bname, String author, int type, String publisher, int borrower, Date dueDate)
    {
        this.id = id;
        this.bname=bname;
        this.author = author;
        this.type = type;
        this.publisher = publisher;
        this.borrower = borrower;
        this.dueDate = dueDate;
    }



    @Override
    public String toString() {
        return "Book{" +
                "id=" + id +
                ", name='" + bname + '\'' +
                ", author='" + author + '\'' +
                ", type=" + type +
                ", publisher='" + publisher + '\'' +
                ", borrower=" + borrower +
                ", dueDate=" + dueDate +
                '}';
    }
}
