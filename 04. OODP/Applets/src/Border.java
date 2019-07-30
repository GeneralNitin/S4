import java.awt.*;

public class Border extends Frame {
    Button b1 = new Button("North");
    Button b2 = new Button("East");
    Button b3 = new Button("South");
    Button b4 = new Button("West");
    public Border(String s1) {
        super(s1);
        setBackground(Color.cyan);
        setLayout(new BorderLayout());
        add(b1, BorderLayout.NORTH);
        add(b2, BorderLayout.EAST);
        add(b3, BorderLayout.SOUTH);
        add(b4, BorderLayout.WEST);
    }

    public static void main(String[] args) {
        Border c = new Border("Border Layout");
        c.setSize(500, 350);
        c.show();
    }
}
