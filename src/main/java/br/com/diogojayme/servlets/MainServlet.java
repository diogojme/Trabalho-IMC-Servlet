package br.com.diogojayme.servlets;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by diogojme on 06/15/16.
 */
public class MainServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(request.getParameter("height") != null && request.getParameter("weight") != null) {

            if(!request.getParameter("height").equals("") || !request.getParameter("weight").equals("")){

                Float height = Float.parseFloat(request.getParameter("height").replace(",", "."));
                Float weight = Float.parseFloat(request.getParameter("weight"));

                float media = weight / (height * height);
                String result;

                if(media < 17){
                    result = "Muito abaixo do peso";
                }else if(media > 17 && media < 18){
                    result = "Abaixo do peso";
                }else if (media > 19 && media < 24.99){
                    result = "peso normal";
                }else if (media > 25 && media < 29){
                    result = "Acima do peso";
                }else if (media > 30 && media < 35){
                    result = "Obesidade I";
                }else if (media > 36 && media < 39){
                    result = "Obesidade II";
                }else{
                    result = "Acima de 40 Obesidade III - morbida-";
                }

                request.setAttribute("result", result);
            }
        }

        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }
}
