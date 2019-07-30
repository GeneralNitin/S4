import java.awt.*;
import java.awt.event.*;

public class ChoiceDemo extends Frame implements ItemListener {
    String msg = "";
    Choice dep = new Choice();
    Label l = new Label(msg);
    public ChoiceDemo(String s) {
        super(s);
        setLayout(new FlowLayout());
        dep.add("Computer Science");
        dep.add("Mechanical");
        dep.add("Mechatronics");
        dep.add("Electrical");
        add(dep);
        add(l);
        dep.addItemListener(this);
    }
    public void itemStateChanged(ItemEvent ie) {
        msg = "You have selected: " + dep.getSelectedItem();
        l.setText(msg);
    }

    public static void main(String[] args) {
        ChoiceDemo b = new ChoiceDemo("Departments");
        b.setSize(850,400);
        b.setVisible(true);
    }
}
