package com.example.customer_list.servlet;

import com.example.customer_list.model.Customer;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CustomerServlet", value = "/CustomerServlet")
public class CustomerServlet extends HttpServlet {
    List<Customer> customers = new ArrayList<>();

    @Override
    public void init() throws ServletException {
        super.init();
        customers.add(new Customer("Mai Văn Hoàn","1983-08-20","Hà Nội",""));
        customers.add(new Customer("Nguyễn Văn Nam","1983-08-21","Bắc Giang",""));
        customers.add(new Customer("Nguyễn Thái Hòa","1983-08-22","Nam Định",""));
        customers.add(new Customer("Trần Đăng Khoa","1983-08-17","Hà Tây",""));
        customers.add(new Customer("Nguyền Đình Thi","1983-08-19","Hà Nội",""));
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("listcustomers", customers);
        request.getRequestDispatcher("view/list.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
