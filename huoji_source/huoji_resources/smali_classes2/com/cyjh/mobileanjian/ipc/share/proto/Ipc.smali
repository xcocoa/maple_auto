.class public final Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;,
        Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessageOrBuilder;,
        Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;,
        Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValueOrBuilder;,
        Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$Device;,
        Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$DeviceOrBuilder;,
        Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;
    }
.end annotation


# static fields
.field private static OooO00o:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static OooO0O0:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static OooO0OO:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static OooO0Oo:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static OooO0o:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static OooO0o0:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static OooO0oO:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "\n\tipc.proto\u0012\tJCPattern\"#\n\u0006Device\u0012\u000c\n\u0004imei\u0018\u0001 \u0001(\t\u0012\u000b\n\u0003mac\u0018\u0002 \u0001(\t\"\u00a3\u0001\n\u000bReturnValue\u0012\'\n\u0004type\u0018\u0001 \u0001(\u000e2\u0013.JCPattern.FundType:\u0004VOID\u0012\u0012\n\nvalBoolean\u0018\u0002 \u0001(\u0008\u0012\u000e\n\u0006valInt\u0018\u0003 \u0001(\u0005\u0012\u000f\n\u0007valLong\u0018\u0004 \u0001(\u0003\u0012\u0010\n\u0008valFloat\u0018\u0005 \u0001(\u0002\u0012\u0011\n\tvalDouble\u0018\u0006 \u0001(\u0001\u0012\u0011\n\tvalString\u0018\u0007 \u0001(\t\"\u00c5\u0002\n\nIpcMessage\u0012\u000e\n\u0003cmd\u0018\u0001 \u0001(\u0005:\u00010\u0012\u000c\n\u0004arg1\u0018\u0002 \u0003(\u0005\u0012\u000c\n\u0004arg2\u0018\u0003 \u0003(\t\u0012\u000c\n\u0004arg3\u0018\u0004 \u0003(\u0002\u0012\u0010\n\u0008fileData\u0018\u0005 \u0001(\u000c\u0012\u000c\n\u0004arg4\u0018\u0006 \u0003(\u0003\u0012\u000f\n\u0007pkgName\u0018\u0007 \u0001(\t\u0012\u0011\n\tclassName\u0018\u0008 \u0001(\t\u0012\u0012\n\nmethodName\u0018\t \u0001(\t\u0012\r\n\u0005types\u0018\n \u0003("

    const-string v1, "\t\u0012\u000e\n\u0006params\u0018\u000b \u0003(\t\u0012\u0019\n\nisSyncCall\u0018\u000c \u0001(\u0008:\u0005false\u0012\u0011\n\u0006waitId\u0018\r \u0001(\u0005:\u00010\u0012(\n\u0008retValue\u0018\u000e \u0001(\u000b2\u0016.JCPattern.ReturnValue\u0012\u0016\n\u0007encrypt\u0018\u000f \u0001(\u0008:\u0005false\u0012\u0016\n\u0007isDebug\u0018\u0010 \u0001(\u0008:\u0005false*W\n\u0008FundType\u0012\u0008\n\u0004VOID\u0010\u0001\u0012\u000b\n\u0007BOOLEAN\u0010\u0002\u0012\u0007\n\u0003INT\u0010\u0003\u0012\u0008\n\u0004LONG\u0010\u0004\u0012\t\n\u0005FLOAT\u0010\u0005\u0012\n\n\u0006DOUBLE\u0010\u0006\u0012\n\n\u0006STRING\u0010\u0007B&\n\u001fcom.cyjh.mobileanjian.ipc.protoB\u0003Ipc"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$1;

    invoke-direct {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$1;-><init>()V

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0, v2, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic OooO()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;->OooO0O0:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method public static synthetic OooO00o(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0

    sput-object p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;->OooO00o:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method public static OooO0O0()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;->OooO0oO:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static synthetic OooO0OO(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    sput-object p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;->OooO0oO:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static synthetic OooO0Oo(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0

    sput-object p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;->OooO0O0:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method public static synthetic OooO0o(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0

    sput-object p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;->OooO0OO:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method public static synthetic OooO0o0()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;->OooO00o:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static synthetic OooO0oO(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0

    sput-object p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;->OooO0Oo:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method public static synthetic OooO0oo(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0

    sput-object p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;->OooO0o0:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method public static synthetic OooOO0(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0

    sput-object p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;->OooO0o:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method public static synthetic OooOO0O()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;->OooO0OO:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static synthetic OooOO0o()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;->OooO0Oo:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method public static synthetic OooOOO()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;->OooO0o:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method public static synthetic OooOOO0()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;->OooO0o0:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private static OooOOOO()V
    .locals 0

    return-void
.end method
