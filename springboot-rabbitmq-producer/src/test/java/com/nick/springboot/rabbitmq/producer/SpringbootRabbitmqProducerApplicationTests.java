package com.nick.springboot.rabbitmq.producer;

import com.nick.springboot.rabbitmq.model.entity.Order;
import com.nick.springboot.rabbitmq.producer.producer.OrderSender;
import com.nick.springboot.rabbitmq.producer.service.OrderService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.UUID;

@RunWith(SpringRunner.class)
@SpringBootTest
public class SpringbootRabbitmqProducerApplicationTests {

/*	@Test
	public void contextLoads() {
	}*/
	@Autowired
	private OrderService orderService;

	@Test
	public void testSend()throws Exception{
		Order order = new Order();
		order.setId("201809290000000001");
		order.setName("测试订单1");
		order.setMessageId(System.currentTimeMillis()+"$"+ UUID.randomUUID().toString());
		orderService.createOrder(order);
	}

}
