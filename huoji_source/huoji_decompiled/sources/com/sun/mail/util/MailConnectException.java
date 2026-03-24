package com.sun.mail.util;

import javax.mail.MessagingException;

/* JADX INFO: loaded from: classes2.dex */
public class MailConnectException extends MessagingException {
    private static final long serialVersionUID = -3818807731125317729L;
    private int cto;
    private String host;
    private int port;

    public MailConnectException(SocketConnectException socketConnectException) {
        String str;
        StringBuilder sb = new StringBuilder("Couldn't connect to host, port: ");
        sb.append(socketConnectException.getHost());
        sb.append(", ");
        sb.append(socketConnectException.getPort());
        sb.append("; timeout ");
        sb.append(socketConnectException.getConnectionTimeout());
        if (socketConnectException.getMessage() != null) {
            str = "; " + socketConnectException.getMessage();
        } else {
            str = "";
        }
        sb.append(str);
        super(sb.toString());
        this.host = socketConnectException.getHost();
        this.port = socketConnectException.getPort();
        this.cto = socketConnectException.getConnectionTimeout();
        setNextException(socketConnectException.getException());
    }

    public int getConnectionTimeout() {
        return this.cto;
    }

    public String getHost() {
        return this.host;
    }

    public int getPort() {
        return this.port;
    }
}
