package com.example.product_discount_calculator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "displayDiscount", value = "/display_discount")
public class displayDiscount extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        double price = Double.parseDouble(request.getParameter("price"));
        int discountPercent = Integer.parseInt(request.getParameter("percent"));
        String description = request.getParameter("description");



        PrintWriter writer = response.getWriter();
        if(price!=0 && discountPercent!=0){
            Double discountAmount = discountPercent * price /100;
            Double priceAfterDiscount = price - discountAmount;

            writer.println("<div>Description: " + description + "</div>");
            writer.println("<div>Discount Amount: " + discountAmount + "</div>");
            writer.println("<div>Discount Price:" + priceAfterDiscount + "</div>");
        }
        else{
            writer.println("Error! Please input all field");
        }


    }
}
