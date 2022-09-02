package servlet;

import lombok.SneakyThrows;
import management.EventManagement;
import model.Event;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/events")
public class EventsServlet extends HttpServlet {

    private EventManagement eventManagement = new EventManagement();

    @SneakyThrows
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Event> eventList = eventManagement.getAllEvents();
        req.setAttribute("events", eventList);
        req.getRequestDispatcher("/WEB-INF/events.jsp").forward(req, resp);

    }
}
