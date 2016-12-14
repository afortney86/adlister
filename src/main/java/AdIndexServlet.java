import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by anthonyfortney on 12/14/16.
 */
@WebServlet(name = "AdIndexServlet", urlPatterns = "/ads")
public class AdIndexServlet extends HttpServlet {

    private Ads ad = new ListAdsDao();

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<Ad> ads = ad.all();

        request.setAttribute("ads", ads);
        request.getRequestDispatcher("/ads/index.jsp").forward(request, response);



    }
}
