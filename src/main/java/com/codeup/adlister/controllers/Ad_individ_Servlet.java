package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Calcious on 12/20/16.
 */
@WebServlet(name = "controllers.Ad_individ_Servlet", urlPatterns = "/ad_individ")
public class Ad_individ_Servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        request.setAttribute("ads", DaoFactory.getAdsDao().specAd(id));
        request.getRequestDispatcher("/WEB-INF/ads/ad_individ.jsp").forward(request, response);
    }
}
