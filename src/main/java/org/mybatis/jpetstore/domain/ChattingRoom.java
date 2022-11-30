package org.mybatis.jpetstore.domain;

import java.io.Serializable;

public class ChattingRoom implements Serializable {

    private String customerId;

    private String managerId;

    //------------------------------------getter&setter-----------------------------------------//

    public ChattingRoom(){}
    public ChattingRoom(String customerId,String managerId){this.customerId=customerId;this.managerId=managerId;}

    public String getCustomerId() {
        return customerId;
    }
    public void setCustomerId(String customerId) {
        this.customerId = customerId;
    }


    public String getManagerId() {return managerId;}
    public void setManagerId(String managerId) {this.managerId = managerId;}


}
