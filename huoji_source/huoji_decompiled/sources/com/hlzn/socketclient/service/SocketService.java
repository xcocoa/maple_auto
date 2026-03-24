package com.hlzn.socketclient.service;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.os.NetworkOnMainThreadException;
import android.text.TextUtils;
import com.hlzn.socketclient.bean.ServiceParam;
import com.hlzn.socketclient.pbmsg.MessageProtobuf;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.File;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.UnknownHostException;
import java.util.LinkedList;
import java.util.Queue;
import z2.au;
import z2.bu;
import z2.cu;
import z2.fu;
import z2.gu;
import z2.hu;
import z2.ju;
import z2.ku;
import z2.mu;
import z2.no;
import z2.yt;
import z2.zt;

/* JADX INFO: loaded from: classes2.dex */
public class SocketService extends Service {
    public static final int oo0o0Oo = 1;
    private Long OoooOoO;
    private String OoooOoo;
    private String Ooooo00;
    private String Ooooo0o;
    private ServiceParam OooooO0;
    private Thread OooooOO;
    private Socket OooooOo;
    private Queue<Long> Oooooo;
    private InetSocketAddress Oooooo0;
    private Queue<Long> OoooooO;
    private Queue<Long> Ooooooo;
    private Queue<Long> o00O0O;
    private Queue<Long> o00Oo0;
    public Thread o00Ooo;
    public Thread o00o0O;
    public Thread o00ooo;
    private File o0OOO0o;
    private Queue<Long> o0OoOo0;
    private yt o0ooOoO;
    private Queue<Long> ooOO;
    private static final String o0Oo0oo = SocketService.class.getSimpleName();
    public static Object o0OO00O = new Object();
    public boolean oo000o = false;
    public boolean o00oO0o = false;
    public boolean o00oO0O = false;
    public Oooo0 o0ooOO0 = new Oooo0(this);
    public boolean o0ooOOo = false;

    public class OooO implements Runnable {
        public OooO() {
        }

        @Override // java.lang.Runnable
        public void run() {
            String str;
            StringBuilder sb;
            String message;
            try {
                SocketService.this.OooooOo = new Socket();
                SocketService.this.Oooooo0 = new InetSocketAddress(bu.OooOOOo, bu.OooOOo0);
                SocketService.this.OooooOo.connect(SocketService.this.Oooooo0, 20000);
                SocketService.this.OooooOo.setTcpNoDelay(true);
                SocketService.this.OooooOo.setSendBufferSize(10240);
                SocketService.this.OooooOo.setKeepAlive(true);
            } catch (NetworkOnMainThreadException e) {
                e.printStackTrace();
                str = SocketService.o0Oo0oo;
                sb = new StringBuilder();
                sb.append("createConnection --> exception=");
                message = e.getMessage();
                sb.append(message);
                ju.OooO0O0(str, sb.toString());
            } catch (UnknownHostException e2) {
                e2.printStackTrace();
                str = SocketService.o0Oo0oo;
                sb = new StringBuilder();
                sb.append("createConnection --> exception=");
                message = e2.getMessage();
                sb.append(message);
                ju.OooO0O0(str, sb.toString());
            } catch (IOException e3) {
                e3.printStackTrace();
                str = SocketService.o0Oo0oo;
                sb = new StringBuilder();
                sb.append("createConnection --> exception=");
                message = e3.getMessage();
                sb.append(message);
                ju.OooO0O0(str, sb.toString());
            }
        }
    }

    public class OooO00o extends Thread {
        public final /* synthetic */ int OoooOoO;
        public final /* synthetic */ String OoooOoo;

        public OooO00o(int i, String str) {
            this.OoooOoO = i;
            this.OoooOoo = str;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            if (SocketService.this.o0OoOo0.size() > 0) {
                MessageProtobuf.CmdScriptSettingsResult.Builder builderNewBuilder = MessageProtobuf.CmdScriptSettingsResult.newBuilder();
                builderNewBuilder.setRpcId(((Long) SocketService.this.o0OoOo0.poll()).longValue()).setError(this.OoooOoO).setMessage(this.OoooOoo);
                ju.OooO0OO(SocketService.o0Oo0oo, "cmdScriptSettingsSuccessOperate --> rpcId =" + builderNewBuilder.getRpcId() + ",code=" + this.OoooOoO + ",msg=" + this.OoooOoo);
                au.OooO0oo().OooO0OO(SocketService.this.OooooOo, builderNewBuilder.build(), 10108);
            }
        }
    }

    public class OooO0O0 extends Thread {
        public final /* synthetic */ int OoooOoO;
        public final /* synthetic */ String OoooOoo;

        public OooO0O0(int i, String str) {
            this.OoooOoO = i;
            this.OoooOoo = str;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            try {
                MessageProtobuf.CmdScreenCaptureResult.Builder builderNewBuilder = MessageProtobuf.CmdScreenCaptureResult.newBuilder();
                builderNewBuilder.setRpcId(((Long) SocketService.this.ooOO.poll()).longValue()).setError(this.OoooOoO).setMessage(this.OoooOoo);
                ju.OooO0OO(SocketService.o0Oo0oo, "cmdScreenCaptureSuccessOperate --> rpcId =" + builderNewBuilder.getRpcId() + ",code=" + this.OoooOoO + ",msg=" + this.OoooOoo);
                au.OooO0oo().OooO0O0(SocketService.this.OooooOo, builderNewBuilder.build(), 10110);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public class OooO0OO extends Thread {
        public final /* synthetic */ int OoooOoO;
        public final /* synthetic */ String OoooOoo;

        public OooO0OO(int i, String str) {
            this.OoooOoO = i;
            this.OoooOoo = str;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            MessageProtobuf.CmdUnBindStudioProjectResult.Builder builderNewBuilder = MessageProtobuf.CmdUnBindStudioProjectResult.newBuilder();
            builderNewBuilder.setRpcId(((Long) SocketService.this.o00O0O.poll()).longValue()).setError(this.OoooOoO).setMessage(this.OoooOoo);
            ju.OooO0OO(SocketService.o0Oo0oo, "cmdUnBindStudioProjectSuccessOperate --> rpcId =" + builderNewBuilder.getRpcId() + ",code=" + this.OoooOoO + ",msg=" + this.OoooOoo);
            au.OooO0oo().OooO0oO(SocketService.this.OooooOo, builderNewBuilder.build(), 10112);
        }
    }

    public class OooO0o extends Thread {
        public final /* synthetic */ int OoooOoO;
        public final /* synthetic */ String OoooOoo;

        public OooO0o(int i, String str) {
            this.OoooOoO = i;
            this.OoooOoo = str;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            MessageProtobuf.CmdRenameDeviceNameResult.Builder builderNewBuilder = MessageProtobuf.CmdRenameDeviceNameResult.newBuilder();
            builderNewBuilder.setRpcId(((Long) SocketService.this.o00Oo0.poll()).longValue()).setError(this.OoooOoO).setMessage(this.OoooOoo);
            ju.OooO0OO(SocketService.o0Oo0oo, "cmdRenameDeviceNameSuccessOperate --> rpcId =" + builderNewBuilder.getRpcId() + ",code=" + this.OoooOoO + ",msg=" + this.OoooOoo);
            au.OooO0oo().OooO00o(SocketService.this.OooooOo, builderNewBuilder.build(), 10114);
        }
    }

    public class OooOO0 implements Runnable {
        public OooOO0() {
        }

        /* JADX WARN: Can't wrap try/catch for region: R(9:4|(2:104|5)|(1:76)(2:9|(7:11|(3:13|14|(2:16|(2:18|(2:20|(2:22|(2:24|(2:26|(2:28|(2:30|(2:96|33))(2:102|38))(2:92|43))(2:88|48))(2:90|53))(2:94|58))(2:100|63))(1:67))(2:86|69))(1:73)|80|98|81|108|107)(1:75))|74|80|98|81|108|107) */
        /* JADX WARN: Code restructure failed: missing block: B:83:0x06ea, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:84:0x06eb, code lost:
        
            r0.printStackTrace();
         */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() {
            SocketService socketService;
            while (true) {
                SocketService socketService2 = SocketService.this;
                if (!socketService2.o00oO0o) {
                    return;
                }
                try {
                } catch (IOException e) {
                    ku.OooO0o(ku.OooO0OO(SocketService.this), "ex=" + e.getMessage(), null, true);
                    SocketService.this.Oooo00o();
                    e.printStackTrace();
                }
                if (socketService2.OooooOo == null || !SocketService.this.OooooOo.isConnected()) {
                    ju.OooO0OO(SocketService.o0Oo0oo, "重连……");
                    socketService = SocketService.this;
                } else {
                    DataInputStream dataInputStreamOooO = au.OooO0oo().OooO(SocketService.this.OooooOo);
                    new ByteArrayOutputStream();
                    if (dataInputStreamOooO != null) {
                        byte[] bArr = new byte[2];
                        byte[] bArr2 = new byte[4];
                        int i = dataInputStreamOooO.read(bArr, 0, 2);
                        ju.OooO0OO(SocketService.o0Oo0oo, "receiveMsg --> 1 cmd_length=" + i + ",content=" + ((int) bArr[1]) + ((int) bArr[0]));
                        if (i == 2) {
                            String strOooO0o0 = gu.OooO0o0(gu.OooO(bArr));
                            int iOooOO0O = gu.OooOO0O(strOooO0o0);
                            ju.OooO0OO(SocketService.o0Oo0oo, "receiveMsg --> 2 hexStr=" + strOooO0o0 + ",cmd=" + iOooOO0O);
                            if (iOooOO0O == 10002) {
                                try {
                                    ju.OooO0OO(SocketService.o0Oo0oo, "登陆响应 --> 1");
                                    dataInputStreamOooO.read(bArr2, 0, 4);
                                    int iOooOO0O2 = gu.OooOO0O(gu.OooO0o0(gu.OooO(bArr2)));
                                    byte[] bArrOooO0OO = mu.OooO0OO(dataInputStreamOooO, iOooOO0O2);
                                    ju.OooO0OO(SocketService.o0Oo0oo, "登陆响应 --> 2 dataArrayLen = " + iOooOO0O2);
                                    MessageProtobuf.LoginResult from = MessageProtobuf.LoginResult.parseFrom(bArrOooO0OO);
                                    ju.OooO0OO(SocketService.o0Oo0oo, "登陆响应 --> 3 code=" + from.getError() + ",message = " + from.getMessage());
                                    zt.OooOO0().OooOO0O().OooO00o(new cu(10002, from.getError(), from.getMessage()));
                                    SocketService.this.o0ooOoO.OooO0O0(String.valueOf(-1));
                                    ku.OooO0o(ku.OooO0OO(SocketService.this), "登陆响应 -->  code=" + from.getError() + ",message=" + from.getMessage(), null, true);
                                } catch (Exception e2) {
                                    e2.printStackTrace();
                                }
                            } else if (iOooOO0O == 10004) {
                                ju.OooO0OO(SocketService.o0Oo0oo, "心跳返回 --> 1");
                                dataInputStreamOooO.read(bArr2, 0, 4);
                                int iOooOO0O3 = gu.OooOO0O(gu.OooO0o0(gu.OooO(bArr2)));
                                byte[] bArr3 = new byte[iOooOO0O3];
                                dataInputStreamOooO.read(bArr3, 0, iOooOO0O3);
                                ju.OooO0OO(SocketService.o0Oo0oo, "心跳返回 --> 2 heartDataArrayLen = " + iOooOO0O3);
                                MessageProtobuf.HeartbeatResult from2 = MessageProtobuf.HeartbeatResult.parseFrom(bArr3);
                                ju.OooO0OO(SocketService.o0Oo0oo, "心跳返回 --> 3 disabled =" + from2.getDisabled());
                                cu cuVar = new cu(10004, "心跳响应");
                                cuVar.OooOO0O(from2.getDisabled());
                                zt.OooOO0().OooOO0O().OooO00o(cuVar);
                                SocketService.this.o0ooOoO.OooO0O0(String.valueOf(-1));
                                ku.OooO0o(ku.OooO0OO(SocketService.this), "心跳返回 -->  disabled=" + from2.getDisabled(), null, true);
                            } else if (iOooOO0O == 10101) {
                                try {
                                    ju.OooO0OO(SocketService.o0Oo0oo, "服务端命令:脚本启动 --> 1");
                                    dataInputStreamOooO.read(bArr2, 0, 4);
                                    int iOooOO0O4 = gu.OooOO0O(gu.OooO0o0(gu.OooO(bArr2)));
                                    byte[] bArrOooO0OO2 = mu.OooO0OO(dataInputStreamOooO, iOooOO0O4);
                                    ju.OooO0OO(SocketService.o0Oo0oo, "服务端命令:脚本启动 --> 2 cmScriptStartDataArrayLen = " + iOooOO0O4);
                                    MessageProtobuf.CmdScriptStart from3 = MessageProtobuf.CmdScriptStart.parseFrom(bArrOooO0OO2);
                                    SocketService.this.Oooooo.offer(Long.valueOf(from3.getRpcId()));
                                    ju.OooO0OO(SocketService.o0Oo0oo, "服务端命令:脚本启动 --> 3 RpcId = " + from3.getRpcId());
                                    zt.OooOO0().OooOO0O().OooO00o(new cu(10101, "服务端命令:脚本启动"));
                                } catch (Exception e3) {
                                    e3.printStackTrace();
                                    zt.OooOO0().OooO0Oo(-1, "服务端命令:脚本启动失败:" + e3.getMessage());
                                }
                            } else if (iOooOO0O == 10103) {
                                try {
                                    ju.OooO0OO(SocketService.o0Oo0oo, "服务端命令:脚本停止 --> 1");
                                    dataInputStreamOooO.read(bArr2, 0, 4);
                                    int iOooOO0O5 = gu.OooOO0O(gu.OooO0o0(gu.OooO(bArr2)));
                                    byte[] bArrOooO0OO3 = mu.OooO0OO(dataInputStreamOooO, iOooOO0O5);
                                    ju.OooO0OO(SocketService.o0Oo0oo, "服务端命令:脚本停止 --> 2 cmScriptStopDataArrayLen = " + iOooOO0O5);
                                    MessageProtobuf.CmdScriptStop from4 = MessageProtobuf.CmdScriptStop.parseFrom(bArrOooO0OO3);
                                    SocketService.this.OoooooO.offer(Long.valueOf(from4.getRpcId()));
                                    ju.OooO0OO(SocketService.o0Oo0oo, "服务端命令:脚本停止 --> 3 RpcId = " + from4.getRpcId());
                                    zt.OooOO0().OooOO0O().OooO00o(new cu(10103, "服务端命令:脚本停止"));
                                } catch (Exception e4) {
                                    e4.printStackTrace();
                                    zt.OooOO0().OooO0o0(-1, "服务端命令:脚本停止失败:" + e4.getMessage());
                                }
                            } else if (iOooOO0O == 10105) {
                                try {
                                    ju.OooO0OO(SocketService.o0Oo0oo, "服务端命令:脚本更新 --> 1");
                                    dataInputStreamOooO.read(bArr2, 0, 4);
                                    int iOooOO0O6 = gu.OooOO0O(gu.OooO0o0(gu.OooO(bArr2)));
                                    byte[] bArrOooO0OO4 = mu.OooO0OO(dataInputStreamOooO, iOooOO0O6);
                                    ju.OooO0OO(SocketService.o0Oo0oo, "服务端命令:脚本更新 --> 2 cmScriptUpgradeDataArrayLen = " + iOooOO0O6);
                                    MessageProtobuf.CmdScriptUpgrade from5 = MessageProtobuf.CmdScriptUpgrade.parseFrom(bArrOooO0OO4);
                                    SocketService.this.Ooooooo.offer(Long.valueOf(from5.getRpcId()));
                                    ju.OooO0OO(SocketService.o0Oo0oo, "服务端命令:脚本更新 --> 3 RpcId=" + from5.getRpcId() + ",ScriptVersion = " + from5.getScriptVersion() + ",ScriptFileUrl=" + from5.getScriptFileUrl());
                                    zt.OooOO0().OooOO0O().OooO00o(new cu(10105, "服务端命令:脚本更新", from5.getScriptVersion(), from5.getScriptFileUrl()));
                                } catch (Exception e5) {
                                    e5.printStackTrace();
                                    zt.OooOO0().OooO0o(-1, "服务端命令:脚本更新失败:" + e5.getMessage());
                                }
                            } else if (iOooOO0O == 10107) {
                                try {
                                    ju.OooO0OO(SocketService.o0Oo0oo, "服务端命令:脚本设置更新 --> 1");
                                    dataInputStreamOooO.read(bArr2, 0, 4);
                                    String strOooO0o02 = gu.OooO0o0(gu.OooO(bArr2));
                                    ju.OooO0OO(SocketService.o0Oo0oo, "服务端命令:脚本设置更新 --> cmScriptSettingsBufferHexStr=" + strOooO0o02);
                                    int iOooOO0O7 = gu.OooOO0O(strOooO0o02);
                                    byte[] bArrOooO0OO5 = mu.OooO0OO(dataInputStreamOooO, iOooOO0O7);
                                    ju.OooO0OO(SocketService.o0Oo0oo, "服务端命令:脚本设置更新 --> 2 cmScriptSettingsDataArrayLen = " + iOooOO0O7);
                                    MessageProtobuf.CmdScriptSettings from6 = MessageProtobuf.CmdScriptSettings.parseFrom(bArrOooO0OO5);
                                    SocketService.this.o0OoOo0.offer(Long.valueOf(from6.getRpcId()));
                                    ju.OooO0OO(SocketService.o0Oo0oo, "服务端命令:脚本设置更新 --> 3 RpcId=" + from6.getRpcId() + ",scriptSettings = " + from6.getScriptSettings());
                                    zt.OooOO0().OooOO0O().OooO00o(new cu(10107, "服务端命令:脚本设置更新", from6.getScriptSettings()));
                                } catch (Exception e6) {
                                    e6.printStackTrace();
                                    zt.OooOO0().OooO0OO(-1, "脚本设置更新失败:" + e6.getMessage());
                                }
                            } else if (iOooOO0O == 10109) {
                                try {
                                    ju.OooO0OO(SocketService.o0Oo0oo, "服务端命令:上传截屏 --> 1");
                                    dataInputStreamOooO.read(bArr2, 0, 4);
                                    int iOooOO0O8 = gu.OooOO0O(gu.OooO0o0(gu.OooO(bArr2)));
                                    byte[] bArrOooO0OO6 = mu.OooO0OO(dataInputStreamOooO, iOooOO0O8);
                                    ju.OooO0OO(SocketService.o0Oo0oo, "服务端命令:上传截屏 --> 2 cmScreenCaptureDataArrayLen = " + iOooOO0O8);
                                    MessageProtobuf.CmdScreenCapture from7 = MessageProtobuf.CmdScreenCapture.parseFrom(bArrOooO0OO6);
                                    SocketService.this.ooOO.offer(Long.valueOf(from7.getRpcId()));
                                    ju.OooO0OO(SocketService.o0Oo0oo, "服务端命令:上传截屏 --> 3 RpcId = " + from7.getRpcId());
                                    zt.OooOO0().OooOO0O().OooO00o(new cu(10109, "服务端命令:上传截屏"));
                                } catch (Exception e7) {
                                    e7.printStackTrace();
                                    zt.OooOO0().OooO0O0(-1, "服务端命令:上传截屏失败:" + e7.getMessage());
                                }
                            } else if (iOooOO0O == 10111) {
                                try {
                                    ju.OooO0OO(SocketService.o0Oo0oo, "服务端命令:解绑工作室项目  --> 1");
                                    dataInputStreamOooO.read(bArr2, 0, 4);
                                    int iOooOO0O9 = gu.OooOO0O(gu.OooO0o0(gu.OooO(bArr2)));
                                    byte[] bArrOooO0OO7 = mu.OooO0OO(dataInputStreamOooO, iOooOO0O9);
                                    ju.OooO0OO(SocketService.o0Oo0oo, "服务端命令:解绑工作室项目  --> 2 cmdUnBindStudioProjectDataArrayLen = " + iOooOO0O9);
                                    MessageProtobuf.CmdUnBindStudioProject from8 = MessageProtobuf.CmdUnBindStudioProject.parseFrom(bArrOooO0OO7);
                                    SocketService.this.o00O0O.offer(Long.valueOf(from8.getRpcId()));
                                    ju.OooO0OO(SocketService.o0Oo0oo, "服务端命令:解绑工作室项目  --> 3 RpcId = " + from8.getRpcId());
                                    zt.OooOO0().OooOO0O().OooO00o(new cu(10111, "服务端命令:解绑工作室项目"));
                                } catch (Exception e8) {
                                    e8.printStackTrace();
                                    zt.OooOO0().OooO0oo(-1, "服务端命令:解绑工作室项目失败:" + e8.getMessage());
                                }
                            } else if (iOooOO0O == 10113) {
                                try {
                                    ju.OooO0OO(SocketService.o0Oo0oo, "服务端命令:修改设备名 --> 1");
                                    dataInputStreamOooO.read(bArr2, 0, 4);
                                    int iOooOO0O10 = gu.OooOO0O(gu.OooO0o0(gu.OooO(bArr2)));
                                    byte[] bArrOooO0OO8 = mu.OooO0OO(dataInputStreamOooO, iOooOO0O10);
                                    ju.OooO0OO(SocketService.o0Oo0oo, "服务端命令:修改设备名 --> 2 cmdRenameDeviceNameDataArrayLen = " + iOooOO0O10);
                                    MessageProtobuf.CmdRenameDeviceName from9 = MessageProtobuf.CmdRenameDeviceName.parseFrom(bArrOooO0OO8);
                                    SocketService.this.o00Oo0.offer(Long.valueOf(from9.getRpcId()));
                                    ju.OooO0OO(SocketService.o0Oo0oo, "服务端命令:修改设备名 --> 3 RpcId = " + from9.getRpcId());
                                    cu cuVar2 = new cu(10113, "服务端命令:修改设备名");
                                    cuVar2.OooOO0(from9.getNewDeviceName());
                                    zt.OooOO0().OooOO0O().OooO00o(cuVar2);
                                } catch (Exception e9) {
                                    e9.printStackTrace();
                                    zt.OooOO0().OooO00o(-1, "服务端命令:修改设备名失败:" + e9.getMessage());
                                }
                            }
                        } else {
                            ju.OooO0OO(SocketService.o0Oo0oo, "服务器重启……");
                            socketService = SocketService.this;
                        }
                        Thread.sleep(50L);
                    } else {
                        ju.OooO0OO(SocketService.o0Oo0oo, "出错重连……");
                        socketService = SocketService.this;
                    }
                }
                socketService.Oooo00o();
                Thread.sleep(50L);
            }
        }
    }

    public class OooOO0O implements Runnable {
        public OooOO0O() {
        }

        @Override // java.lang.Runnable
        public void run() {
            while (SocketService.this.oo000o) {
                MessageProtobuf.Heartbeat.Builder builderNewBuilder = MessageProtobuf.Heartbeat.newBuilder();
                builderNewBuilder.setRpcId(hu.OooO00o()).setScriptRunning(SocketService.this.o0ooOOo);
                au.OooO0oo().OooOO0o(SocketService.this.OooooOo, builderNewBuilder.build(), 10003);
                try {
                    Thread.sleep(60000L);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public class OooOOO extends Thread {
        public OooOOO() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            au.OooO0oo().OooOO0(SocketService.this.OooooOo, MessageProtobuf.ScriptStart.newBuilder().build(), 10005);
        }
    }

    public class OooOOO0 implements Runnable {
        public OooOOO0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MessageProtobuf.Login.Builder builderNewBuilder = MessageProtobuf.Login.newBuilder();
            builderNewBuilder.setRpcId(hu.OooO00o()).setAppId(SocketService.this.OoooOoO.longValue()).setScriptId(SocketService.this.OoooOoo).setDeviceId(SocketService.this.Ooooo00).setIMToken(SocketService.this.Ooooo0o).setScriptRunning(SocketService.this.o0ooOOo);
            au.OooO0oo().OooOOO0(SocketService.this.OooooOo, builderNewBuilder.build(), 10001);
        }
    }

    public class OooOOOO extends Thread {
        public OooOOOO() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            au.OooO0oo().OooOO0O(SocketService.this.OooooOo, MessageProtobuf.ScriptStop.newBuilder().build(), 10006);
        }
    }

    public class OooOo extends Thread {
        public final /* synthetic */ int OoooOoO;
        public final /* synthetic */ String OoooOoo;

        public OooOo(int i, String str) {
            this.OoooOoO = i;
            this.OoooOoo = str;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            MessageProtobuf.CmdScriptStopResult.Builder builderNewBuilder = MessageProtobuf.CmdScriptStopResult.newBuilder();
            builderNewBuilder.setRpcId(((Long) SocketService.this.OoooooO.poll()).longValue()).setError(this.OoooOoO).setMessage(this.OoooOoo);
            ju.OooO0OO(SocketService.o0Oo0oo, "cmdScriptStopSuccessOperate --> rpcId =" + builderNewBuilder.getRpcId() + ",code=" + this.OoooOoO + ",msg=" + this.OoooOoo);
            au.OooO0oo().OooO0o0(SocketService.this.OooooOo, builderNewBuilder.build(), 10104);
        }
    }

    public class OooOo00 extends Thread {
        public final /* synthetic */ int OoooOoO;
        public final /* synthetic */ String OoooOoo;

        public OooOo00(int i, String str) {
            this.OoooOoO = i;
            this.OoooOoo = str;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            MessageProtobuf.CmdScriptStartResult.Builder builderNewBuilder = MessageProtobuf.CmdScriptStartResult.newBuilder();
            builderNewBuilder.setRpcId(((Long) SocketService.this.Oooooo.poll()).longValue()).setError(this.OoooOoO).setMessage(this.OoooOoo);
            ju.OooO0OO(SocketService.o0Oo0oo, "cmdScriptStartSuccessOperate --> rpcId =" + builderNewBuilder.getRpcId() + ",code=" + this.OoooOoO + ",msg=" + this.OoooOoo);
            au.OooO0oo().OooO0Oo(SocketService.this.OooooOo, builderNewBuilder.build(), 10102);
        }
    }

    public class Oooo0 extends Binder {
        private SocketService OooO00o;
        public fu OooO0O0;

        public Oooo0(SocketService socketService) {
            this.OooO00o = socketService;
        }

        public void sendMethod(Object obj) {
            this.OooO00o.Oooo0oO(obj);
            this.OooO0O0.OooO00o(obj);
        }

        public void setOnServiceCallBack(fu fuVar) {
            this.OooO0O0 = fuVar;
        }
    }

    public class Oooo000 extends Thread {
        public final /* synthetic */ int OoooOoO;
        public final /* synthetic */ String OoooOoo;

        public Oooo000(int i, String str) {
            this.OoooOoO = i;
            this.OoooOoo = str;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            MessageProtobuf.CmdScriptUpgradeResult.Builder builderNewBuilder = MessageProtobuf.CmdScriptUpgradeResult.newBuilder();
            builderNewBuilder.setRpcId(((Long) SocketService.this.Ooooooo.poll()).longValue()).setError(this.OoooOoO).setMessage(this.OoooOoo);
            ju.OooO0OO(SocketService.o0Oo0oo, "cmdScriptUpgradeSuccessOperate --> rpcId =" + builderNewBuilder.getRpcId() + ",code=" + this.OoooOoO + ",msg=" + this.OoooOoo);
            au.OooO0oo().OooO0o(SocketService.this.OooooOo, builderNewBuilder.build(), 10106);
        }
    }

    private void OooOOoo(int i, String str) {
        if (this.o00Oo0.isEmpty()) {
            return;
        }
        new OooO0o(i, str).start();
    }

    private void OooOo(int i, String str) {
        if (this.Ooooooo.isEmpty()) {
            return;
        }
        new Oooo000(i, str).start();
    }

    private void OooOo0(int i, String str) {
        if (this.o0OoOo0.isEmpty()) {
            return;
        }
        new OooO00o(i, str).start();
    }

    private void OooOo00(int i, String str) {
        if (this.ooOO.isEmpty()) {
            return;
        }
        new OooO0O0(i, str).start();
    }

    private void OooOo0O(int i, String str) {
        if (this.Oooooo.isEmpty()) {
            return;
        }
        new OooOo00(i, str).start();
    }

    private void OooOo0o(int i, String str) {
        if (this.OoooooO.isEmpty()) {
            return;
        }
        new OooOo(i, str).start();
    }

    private void OooOoO0(int i, String str) {
        if (this.o00O0O.isEmpty()) {
            return;
        }
        new OooO0OO(i, str).start();
    }

    public static String OooOoOO(String str) {
        try {
            if (str.equals(new String(str.getBytes(no.OooO0OO), no.OooO0OO))) {
                return no.OooO0OO;
            }
        } catch (Exception unused) {
        }
        try {
            if (str.equals(new String(str.getBytes("ISO-8859-1"), "ISO-8859-1"))) {
                return "ISO-8859-1";
            }
        } catch (Exception unused2) {
        }
        try {
            if (str.equals(new String(str.getBytes("UTF-8"), "UTF-8"))) {
                return "UTF-8";
            }
        } catch (Exception unused3) {
        }
        try {
            return str.equals(new String(str.getBytes("GBK"), "GBK")) ? "GBK" : "";
        } catch (Exception unused4) {
            return "";
        }
    }

    private void OooOooO() {
        this.Oooooo = new LinkedList();
        this.OoooooO = new LinkedList();
        this.Ooooooo = new LinkedList();
        this.o0OoOo0 = new LinkedList();
        this.ooOO = new LinkedList();
        this.o00O0O = new LinkedList();
        this.o00Oo0 = new LinkedList();
        yt ytVar = this.o0ooOoO;
        if (ytVar != null) {
            ytVar.OooO0OO();
        }
        this.o0ooOoO = new yt(this);
    }

    private void OooOooo(Intent intent) {
        ServiceParam serviceParam = (ServiceParam) intent.getParcelableExtra(bu.OooOOOO);
        this.OooooO0 = serviceParam;
        if (serviceParam != null) {
            if (!TextUtils.isEmpty(serviceParam.getAppId())) {
                this.OoooOoO = Long.valueOf(Long.parseLong(this.OooooO0.getAppId()));
            }
            if (!TextUtils.isEmpty(this.OooooO0.getScriptId())) {
                this.OoooOoo = this.OooooO0.getScriptId();
            }
            if (!TextUtils.isEmpty(this.OooooO0.getDeviceId())) {
                this.Ooooo00 = this.OooooO0.getDeviceId();
            }
            if (TextUtils.isEmpty(this.OooooO0.getiMToken())) {
                return;
            }
            this.Ooooo0o = this.OooooO0.getiMToken();
        }
    }

    private void Oooo() {
        if (this.OooooOo != null) {
            ku.OooO0o(ku.OooO0OO(this), "stopService --> ", null, true);
            OooOooO();
            au.OooO0oo().OooOOO(this.OooooOo);
            stopSelf();
            this.OooooOo = null;
            this.o00Ooo = null;
            this.o00o0O = null;
            this.OooooOO = null;
            this.oo000o = false;
            this.o00oO0o = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Oooo00o() {
        String str = o0Oo0oo;
        ju.OooO0OO(str, "proxyCreateConnection --> 1 ");
        if (this.o0ooOoO != null) {
            ju.OooO0OO(str, "proxyCreateConnection --> 2 ");
            this.o0ooOoO.OooO00o(String.valueOf(-1));
        }
    }

    private void Oooo0OO() {
        ju.OooO0OO(o0Oo0oo, "scriptStart");
        new OooOOO().start();
    }

    private void Oooo0o0() {
        new OooOOOO().start();
    }

    private void Oooo0oo() {
        if (this.OooooOo != null) {
            au.OooO0oo().OooOOO(this.OooooOo);
        }
    }

    public void OooOoO() {
        ju.OooO0OO(o0Oo0oo, "createConnection --> IP=" + bu.OooOOOo + ",Port=" + bu.OooOOo0);
        Thread thread = new Thread(new OooO());
        this.OooooOO = thread;
        thread.start();
    }

    public int OooOoo() {
        return 1;
    }

    public yt OooOoo0() {
        return this.o0ooOoO;
    }

    public void Oooo0() {
        ju.OooO0OO(o0Oo0oo, "receiveMsg --> isReceive=" + this.o00oO0o);
        Thread thread = new Thread(new OooOO0());
        this.o00o0O = thread;
        thread.start();
    }

    public boolean Oooo000() {
        Socket socket = this.OooooOo;
        return socket == null || !socket.isConnected();
    }

    public void Oooo00O() {
        ju.OooO0OO(o0Oo0oo, "login --> ");
        ku.OooO0o(ku.OooO0OO(this), "login --> mIMToken=" + this.Ooooo0o, null, true);
        bu.OooOo0 = false;
        if (TextUtils.isEmpty(this.Ooooo0o)) {
            return;
        }
        Thread thread = new Thread(new OooOOO0());
        this.o00ooo = thread;
        thread.start();
    }

    public void Oooo0O0() {
        ju.OooO0OO(o0Oo0oo, "resetConnect -->");
        if (bu.OooOo0) {
            return;
        }
        bu.OooOo0 = true;
        ku.OooO0o(ku.OooO0OO(this), "resetConnect --> IMConfig.IS_RECONNECT=" + bu.OooOo0, null, true);
        this.o00oO0o = false;
        Oooo0oo();
        this.o0ooOoO.OooO0OO();
        zt.OooOO0().OooOO0O().OooO00o(new cu(-1, "重连"));
    }

    public void Oooo0o() {
        Thread thread = new Thread(new OooOO0O());
        this.o00Ooo = thread;
        thread.start();
    }

    public void Oooo0oO(Object obj) {
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.o0ooOO0;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        File fileOooO0OO = ku.OooO0OO(this);
        if (ku.OooO0Oo(fileOooO0OO)) {
            ku.OooO(fileOooO0OO, "", null, false);
        }
        ju.OooO0OO(o0Oo0oo, "onCreate --> ");
        OooOoO();
        Oooo0();
        this.oo000o = true;
        this.o00oO0o = true;
        this.o00oO0O = false;
        OooOooO();
        bu.OooOo0O = true;
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        ju.OooO0OO(o0Oo0oo, "onDestroy --> ");
        this.o0ooOoO.OooO0OO();
        if (this.OooooOo != null) {
            au.OooO0oo().OooOOO(this.OooooOo);
            stopSelf();
            this.o00Ooo = null;
            this.o00o0O = null;
            this.OooooOO = null;
            this.oo000o = false;
            this.o00oO0o = false;
        }
        bu.OooOo0O = false;
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        String stringExtra;
        ju.OooO0OO(o0Oo0oo, "onStartCommand --> flags=" + i + ",startId=" + i2 + ",isScriptRunning=" + this.o0ooOOo);
        if (intent != null && !TextUtils.isEmpty(intent.getStringExtra(bu.OooOOO))) {
            stringExtra = intent.getStringExtra(bu.OooOOO);
            OooOooo(intent);
            stringExtra.hashCode();
            switch (stringExtra) {
                case "cmd_rename_device_name_success_operate":
                    OooOOoo(this.OooooO0.getCmdRenameDeviceNameCode(), this.OooooO0.getCmdRenameDeviceNameResult());
                    break;
                case "send_heart_operate":
                    Oooo0o();
                    break;
                case "cmd_screen_capture_success_operate":
                    OooOo00(this.OooooO0.getCmdScreenCaptureCode(), this.OooooO0.getCmdScreenCaptureResult());
                    break;
                case "script_start_operate":
                    this.o0ooOOo = this.OooooO0.isScriptRunning();
                    ju.OooO0OO(stringExtra, "mIsScriptRunning:" + this.o0ooOOo);
                    Oooo0OO();
                    break;
                case "cmd_script_upgrade_success_operate":
                    OooOo(this.OooooO0.getCmdScriptUpgradeCode(), this.OooooO0.getCmdScriptUpgradeResult());
                    break;
                case "cmd_script_start_success_operate":
                    OooOo0O(this.OooooO0.getCmdScriptStartCode(), this.OooooO0.getCmdScriptStartResult());
                    break;
                case "cmd_unbind_studio_project_success_operate":
                    OooOoO0(this.OooooO0.getCmdUnBindStudioProjectCode(), this.OooooO0.getCmdUnBindStudioProjectResult());
                    break;
                case "script_stop_operate":
                    this.o0ooOOo = this.OooooO0.isScriptRunning();
                    ju.OooO0OO(stringExtra, "mIsScriptRunning:" + this.o0ooOOo);
                    Oooo0o0();
                    break;
                case "cmd_script_settings_success_operate":
                    OooOo0(this.OooooO0.getCmdScriptSettingsCode(), this.OooooO0.getCmdScriptSettingsResult());
                    break;
                case "stop_service_operate":
                    Oooo();
                    break;
                case "login_operate":
                    this.o00oO0o = true;
                    Oooo00O();
                    break;
                case "shut_down_connection_operate":
                    this.o0ooOOo = this.OooooO0.isScriptRunning();
                    ju.OooO0OO(stringExtra, "mIsScriptRunning:" + this.o0ooOOo);
                    if (this.OooooOo != null) {
                        ku.OooO0o(ku.OooO0OO(this), "SHUT_DOWN_CONNECTION_OPERATE 关闭连接操作 ---> ", null, true);
                        au.OooO0oo().OooOOO(this.OooooOo);
                        OooOooO();
                        OooOoO();
                        break;
                    }
                    break;
                case "cmd_script_stop_success_operate":
                    OooOo0o(this.OooooO0.getCmdScriptStopCode(), this.OooooO0.getCmdScriptStopResult());
                    break;
            }
        }
        return super.onStartCommand(intent, i, i2);
    }
}
