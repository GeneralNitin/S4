import java.awt.*;
import java.applet.*;

public class MovingText extends Applet implements Runnable {
    private String display;
    private int x, y, flag;
    private Thread t;

    public void init() {
        display = "This is the fight of our lives. ";
        x = 100;
        y = 100;
        flag = 1;

        t = new Thread(this, "MyThread");
        t.start();
    }

    // update the x co-ordinate
    private void update() {
        x = x + 10*flag;
        if (x > 300)
            flag = -1;
        if (x < 100)
            flag = 1;
    }

    // run
    public void run() {
        while (true) {
            // Repainting the screen
            // calls the paint function
            repaint();

            update();
            try {
                Thread.sleep(1000);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }

    // drawString
    public void paint(Graphics g)
    {
        g.drawString(display, x, y);
    }
}