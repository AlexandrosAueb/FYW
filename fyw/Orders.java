package fyw;

public class Orders {
    
    private int id;
    private String date;
    private String customerName;
	private String address;
    private String product;
	private double price;
	private int estimatedTime;
    private int deliveredTime;
    private String status;
    private int orderSource;
    private int employeeId;

    /**
     * Full constuctor
     * 
     * @param id
     * @param date
     * @param customerName
     * @param address
     * @param product
     * @param price
     * @param estimatedTime
     * @param deliveredTime
     * @param orderSource
     * @param employeeId
     */

     public Orders(int id, String date, String customerName, String address, String product, double price,
     int estimatedTime, int deliveredTime, String status, int orderSource, int employeeId) {
        this.id = id;
        this.date = date;
        this.customerName = customerName;
        this.address = address;
        this.product = product;
        this.price = price;
        this.estimatedTime = estimatedTime;
        this.deliveredTime = deliveredTime;
        this.status=status;
        this.orderSource = orderSource;
        this.employeeId = employeeId;
    }



    public int getId() {
        return id;
    }



    public void setId(int id) {
        this.id = id;
    }



    public String getDate() {
        return date;
    }



    public void setDate(String date) {
        this.date = date;
    }



    public String getCustomerName() {
        return customerName;
    }



    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }



    public String getAddress() {
        return address;
    }



    public void setAddress(String address) {
        this.address = address;
    }



    public String getProduct() {
        return product;
    }



    public void setProduct(String product) {
        this.product = product;
    }


    public String getStatus() {
        return status;
    }



    public void setStatus(String status) {
        this.status = status;
    }



    public double getPrice() {
        return price;
    }



    public void setPrice(double price) {
        this.price = price;
    }



    public int getEstimatedTime() {
        return estimatedTime;
    }



    public void setEstimatedTime(int estimatedTime) {
        this.estimatedTime = estimatedTime;
    }



    public int getDeliveredTime() {
        return deliveredTime;
    }



    public void setDeliveredTime(int deliveredTime) {
        this.deliveredTime = deliveredTime;
    }



    public int getOrderSource() {
        return orderSource;
    }



    public void setOrderSource(int orderSource) {
        this.orderSource = orderSource;
    }



    public int getEmployeeId() {
        return employeeId;
    }



    public void setEmployeeId(int employeeId) {
        this.employeeId = employeeId;
    }




}
