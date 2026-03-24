package z2;

import com.hlzn.socketclient.pbmsg.MessageProtobuf;
import java.io.BufferedInputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.Socket;

/* JADX INFO: loaded from: classes2.dex */
public class au {
    private static au OooO0Oo;
    private final String OooO00o = au.class.getSimpleName();
    private DataOutputStream OooO0O0;
    private DataInputStream OooO0OO;

    public static au OooO0oo() {
        if (OooO0Oo == null) {
            synchronized (au.class) {
                if (OooO0Oo == null) {
                    OooO0Oo = new au();
                }
            }
        }
        return OooO0Oo;
    }

    public DataInputStream OooO(Socket socket) {
        if (socket == null || socket.isClosed() || !socket.isConnected()) {
            return null;
        }
        try {
            this.OooO0OO = new DataInputStream(new BufferedInputStream(socket.getInputStream()));
        } catch (IOException e) {
            e.printStackTrace();
            DataInputStream dataInputStream = this.OooO0OO;
            if (dataInputStream != null) {
                try {
                    dataInputStream.close();
                } catch (IOException e2) {
                    e2.printStackTrace();
                }
            }
        }
        return this.OooO0OO;
    }

    public void OooO00o(Socket socket, MessageProtobuf.CmdRenameDeviceNameResult cmdRenameDeviceNameResult, int i) {
        byte[] bArrOooOOO0 = gu.OooOOO0(i);
        byte[] byteArray = cmdRenameDeviceNameResult.toByteArray();
        byte[] bArrOooO0O0 = gu.OooO0O0(bArrOooOOO0, gu.OooOOO(byteArray.length), byteArray);
        ju.OooO0OO(this.OooO00o, "cmdRenameDeviceNameResult --> binary value = " + ((int) bArrOooOOO0[1]) + ((int) bArrOooOOO0[0]));
        if (socket == null || !socket.isConnected()) {
            return;
        }
        try {
            OutputStream outputStream = socket.getOutputStream();
            outputStream.write(bArrOooO0O0);
            outputStream.flush();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void OooO0O0(Socket socket, MessageProtobuf.CmdScreenCaptureResult cmdScreenCaptureResult, int i) {
        byte[] bArrOooOOO0 = gu.OooOOO0(i);
        byte[] byteArray = cmdScreenCaptureResult.toByteArray();
        byte[] bArrOooO0O0 = gu.OooO0O0(bArrOooOOO0, gu.OooOOO(byteArray.length), byteArray);
        ju.OooO0OO(this.OooO00o, "cmdScreenCaptureResult --> binary value = " + ((int) bArrOooOOO0[1]) + ((int) bArrOooOOO0[0]));
        if (socket == null || !socket.isConnected()) {
            return;
        }
        try {
            OutputStream outputStream = socket.getOutputStream();
            outputStream.write(bArrOooO0O0);
            outputStream.flush();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void OooO0OO(Socket socket, MessageProtobuf.CmdScriptSettingsResult cmdScriptSettingsResult, int i) {
        byte[] bArrOooOOO0 = gu.OooOOO0(i);
        byte[] byteArray = cmdScriptSettingsResult.toByteArray();
        byte[] bArrOooO0O0 = gu.OooO0O0(bArrOooOOO0, gu.OooOOO(byteArray.length), byteArray);
        ju.OooO0OO(this.OooO00o, "cmdScriptSettingsResult --> binary value = " + ((int) bArrOooOOO0[1]) + ((int) bArrOooOOO0[0]));
        if (socket == null || !socket.isConnected()) {
            return;
        }
        try {
            OutputStream outputStream = socket.getOutputStream();
            outputStream.write(bArrOooO0O0);
            outputStream.flush();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void OooO0Oo(Socket socket, MessageProtobuf.CmdScriptStartResult cmdScriptStartResult, int i) {
        byte[] bArrOooOOO0 = gu.OooOOO0(i);
        byte[] byteArray = cmdScriptStartResult.toByteArray();
        byte[] bArrOooO0O0 = gu.OooO0O0(bArrOooOOO0, gu.OooOOO(byteArray.length), byteArray);
        ju.OooO0OO(this.OooO00o, "cmdScriptStartResult --> binary value = " + ((int) bArrOooOOO0[1]) + ((int) bArrOooOOO0[0]));
        if (socket == null || !socket.isConnected()) {
            return;
        }
        try {
            OutputStream outputStream = socket.getOutputStream();
            outputStream.write(bArrOooO0O0);
            outputStream.flush();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void OooO0o(Socket socket, MessageProtobuf.CmdScriptUpgradeResult cmdScriptUpgradeResult, int i) {
        byte[] bArrOooOOO0 = gu.OooOOO0(i);
        byte[] byteArray = cmdScriptUpgradeResult.toByteArray();
        byte[] bArrOooO0O0 = gu.OooO0O0(bArrOooOOO0, gu.OooOOO(byteArray.length), byteArray);
        ju.OooO0OO(this.OooO00o, "cmdScriptUpgradeResult --> binary value = " + ((int) bArrOooOOO0[1]) + ((int) bArrOooOOO0[0]));
        if (socket == null || !socket.isConnected()) {
            return;
        }
        try {
            OutputStream outputStream = socket.getOutputStream();
            outputStream.write(bArrOooO0O0);
            outputStream.flush();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void OooO0o0(Socket socket, MessageProtobuf.CmdScriptStopResult cmdScriptStopResult, int i) {
        byte[] bArrOooOOO0 = gu.OooOOO0(i);
        byte[] byteArray = cmdScriptStopResult.toByteArray();
        byte[] bArrOooO0O0 = gu.OooO0O0(bArrOooOOO0, gu.OooOOO(byteArray.length), byteArray);
        ju.OooO0OO(this.OooO00o, "cmdScriptStopResult --> binary value = " + ((int) bArrOooOOO0[1]) + ((int) bArrOooOOO0[0]));
        if (socket == null || !socket.isConnected()) {
            return;
        }
        try {
            OutputStream outputStream = socket.getOutputStream();
            outputStream.write(bArrOooO0O0);
            outputStream.flush();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void OooO0oO(Socket socket, MessageProtobuf.CmdUnBindStudioProjectResult cmdUnBindStudioProjectResult, int i) {
        byte[] bArrOooOOO0 = gu.OooOOO0(i);
        byte[] byteArray = cmdUnBindStudioProjectResult.toByteArray();
        byte[] bArrOooO0O0 = gu.OooO0O0(bArrOooOOO0, gu.OooOOO(byteArray.length), byteArray);
        ju.OooO0OO(this.OooO00o, "cmdUnBindStudioProjectResult --> binary value = " + ((int) bArrOooOOO0[1]) + ((int) bArrOooOOO0[0]));
        if (socket == null || !socket.isConnected()) {
            return;
        }
        try {
            OutputStream outputStream = socket.getOutputStream();
            outputStream.write(bArrOooO0O0);
            outputStream.flush();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void OooOO0(Socket socket, MessageProtobuf.ScriptStart scriptStart, int i) {
        byte[] bArrOooOOO0 = gu.OooOOO0(i);
        byte[] byteArray = scriptStart.toByteArray();
        byte[] bArrOooO0O0 = gu.OooO0O0(bArrOooOOO0, gu.OooOOO(byteArray.length), byteArray);
        ju.OooO0OO("SocketService", "scriptStart --> binary value = " + ((int) bArrOooOOO0[1]) + ((int) bArrOooOOO0[0]));
        if (socket == null || !socket.isConnected()) {
            return;
        }
        try {
            OutputStream outputStream = socket.getOutputStream();
            outputStream.write(bArrOooO0O0);
            outputStream.flush();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void OooOO0O(Socket socket, MessageProtobuf.ScriptStop scriptStop, int i) {
        byte[] bArrOooOOO0 = gu.OooOOO0(i);
        byte[] byteArray = scriptStop.toByteArray();
        byte[] bArrOooO0O0 = gu.OooO0O0(bArrOooOOO0, gu.OooOOO(byteArray.length), byteArray);
        ju.OooO0OO("SocketService", "scriptStop --> binary value = " + ((int) bArrOooOOO0[1]) + ((int) bArrOooOOO0[0]));
        if (socket == null || !socket.isConnected()) {
            return;
        }
        try {
            OutputStream outputStream = socket.getOutputStream();
            outputStream.write(bArrOooO0O0);
            outputStream.flush();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public boolean OooOO0o(Socket socket, MessageProtobuf.Heartbeat heartbeat, int i) {
        byte[] bArrOooOOO0 = gu.OooOOO0(i);
        byte[] byteArray = heartbeat.toByteArray();
        byte[] bArrOooO0O0 = gu.OooO0O0(bArrOooOOO0, gu.OooOOO(byteArray.length), byteArray);
        ju.OooO0OO("SocketService", "sendHeart --> binary value = " + ((int) bArrOooOOO0[1]) + ((int) bArrOooOOO0[0]));
        if (socket != null && socket.isConnected()) {
            try {
                OutputStream outputStream = socket.getOutputStream();
                outputStream.write(bArrOooO0O0);
                outputStream.flush();
                return true;
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    public void OooOOO(Socket socket) {
        try {
            DataOutputStream dataOutputStream = this.OooO0O0;
            if (dataOutputStream != null) {
                dataOutputStream.close();
            }
            DataInputStream dataInputStream = this.OooO0OO;
            if (dataInputStream != null) {
                dataInputStream.close();
            }
            if (socket != null) {
                socket.close();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void OooOOO0(Socket socket, MessageProtobuf.Login login, int i) {
        byte[] bArrOooOOO0 = gu.OooOOO0(i);
        byte[] byteArray = login.toByteArray();
        byte[] bArrOooO0O0 = gu.OooO0O0(bArrOooOOO0, gu.OooOOO(byteArray.length), byteArray);
        ju.OooO0OO("SocketService", "sendLogin --> binary value = " + ((int) bArrOooOOO0[1]) + ((int) bArrOooOOO0[0]));
        if (socket == null || !socket.isConnected()) {
            return;
        }
        try {
            OutputStream outputStream = socket.getOutputStream();
            outputStream.write(bArrOooO0O0);
            outputStream.flush();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
