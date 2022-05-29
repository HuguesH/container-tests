import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;

@WebServlet(
        name = "MainServlet",
        description = "Main Servlet Using Annotations",
        urlPatterns = {"/MainServlet"}
)
public class MainServlet extends HttpServlet {

    @Override
    protected void doGet(
            HttpServletRequest request,
            HttpServletResponse response) throws IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<p>Hello World! this dynamic page from MainServlet</p>");
        InputStream inputStream = this.getClass().getClassLoader().getResourceAsStream("test/file-add-in-shared.txt");
        String text = new String(inputStream.readAllBytes(), StandardCharsets.UTF_8);
        out.println("Enum ressource :" + text);
    }
}