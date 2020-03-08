package com.nick.springboot.rabbitmq.model.entity;



import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Order implements Serializable{

    private static final long serialVersionUID = -6891793957623667275L;
    private String id;
    private String name;
    private String messageId;//存储消息发送的唯一标识
}
