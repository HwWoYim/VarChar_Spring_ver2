package com.koala.biz.chat;


import java.io.IOException;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

@ServerEndpoint("/ChatingServer")
public class ChatServer {
    private static Set<Session> clients
            = Collections.synchronizedSet(new HashSet<Session>());

    @OnOpen  // Ŭ���̾�Ʈ ���� �� ����
    public void onOpen(Session session) {
        clients.add(session);  // ���� �߰�
        System.out.println("������ ����:" + session.getId());
    }

    @OnMessage  // �޽����� ������ ����
    public void onMessage(String message, Session session) throws IOException {
        System.out.println("�޽��� ���� : " + session.getId() + ":" + message);
        synchronized (clients) {
            for (Session client : clients) {  // ��� Ŭ���̾�Ʈ�� �޽��� ����
                if (!client.equals(session)) {  // ��, �޽����� ���� Ŭ���̾�Ʈ�� ����
                    client.getBasicRemote().sendText(message);
                }
            }
        }
    }
    @OnClose  // Ŭ���̾�Ʈ���� ������ ����� ����
    public void onClose(Session session) {
        clients.remove(session); 
        System.out.println("������ ���� : " + session.getId());
    }

    @OnError  // ���� �߻� �� ����
    public void onError(Throwable e) {
        System.out.println("���� �߻�");
        e.printStackTrace();
    }
}
