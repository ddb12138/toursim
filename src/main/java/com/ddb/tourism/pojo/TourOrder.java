package com.ddb.tourism.pojo;

import java.util.Date;

public class TourOrder {
    private Long id;

    private String order_id;

    private Date addtime;

    private Byte order_status;

    private Integer scenic_id;

    private Integer ticket_num;

    private Integer ticket_price;

    private Integer ticket_total;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getOrder_id() {
        return order_id;
    }

    public void setOrder_id(String order_id) {
        this.order_id = order_id == null ? null : order_id.trim();
    }

    public Date getAddtime() {
        return addtime;
    }

    public void setAddtime(Date addtime) {
        this.addtime = addtime;
    }

    public Byte getOrder_status() {
        return order_status;
    }

    public void setOrder_status(Byte order_status) {
        this.order_status = order_status;
    }

    public Integer getScenic_id() {
        return scenic_id;
    }

    public void setScenic_id(Integer scenic_id) {
        this.scenic_id = scenic_id;
    }

    public Integer getTicket_num() {
        return ticket_num;
    }

    public void setTicket_num(Integer ticket_num) {
        this.ticket_num = ticket_num;
    }

    public Integer getTicket_price() {
        return ticket_price;
    }

    public void setTicket_price(Integer ticket_price) {
        this.ticket_price = ticket_price;
    }

    public Integer getTicket_total() {
        return ticket_total;
    }

    public void setTicket_total(Integer ticket_total) {
        this.ticket_total = ticket_total;
    }
}