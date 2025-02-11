package com.codegym.staffs.service;

import java.util.List;

public interface IStaffService<E> {
    void add (E e);
    List<E> findAll();
    void edit (int id, E e);
    void delete (int id);
    int findIndexById(int id);
    E findById(int id);
}