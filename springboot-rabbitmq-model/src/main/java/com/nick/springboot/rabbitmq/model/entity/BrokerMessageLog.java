package com.nick.springboot.rabbitmq.model.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class BrokerMessageLog{
    /**消息唯一ID*/
    private String messageId;
    /**消息内容*/
    private String message;
    /**重试次数*/
    private Integer tryCount;
    /**状态 0-发送中，1-成功，2失败*/
    private String status;
    /**下次重试时间*/
    private Date nextRetry;
    /**创建时间*/
    private Date createTime;
    /**更新时间*/
    private Date updateTime;

}

