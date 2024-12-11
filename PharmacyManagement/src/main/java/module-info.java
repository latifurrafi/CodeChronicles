module com.pharmacy.pharmacymanagement {
    requires javafx.controls;
    requires javafx.graphics;
    requires javafx.fxml;
    requires java.sql;
//    requires mysql.connector.java;


    opens com.pharmacy.pharmacymanagement to javafx.fxml;
    opens com.pharmacy.pharmacymanagement.Controller to javafx.fxml;
    opens com.pharmacy.pharmacymanagement.Models to javafx.base;
    exports com.pharmacy.pharmacymanagement;
}