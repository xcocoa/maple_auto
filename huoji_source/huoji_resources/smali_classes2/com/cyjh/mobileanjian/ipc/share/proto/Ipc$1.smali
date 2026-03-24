.class public Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public assignDescriptors(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/ExtensionRegistry;
    .locals 18

    invoke-static/range {p1 .. p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;->OooO0OO(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;->OooO0O0()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;->OooO00o(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;->OooO0o0()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const-string v2, "Imei"

    const-string v3, "Mac"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;->OooO0Oo(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;->OooO0O0()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;->OooO0o(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;->OooOO0O()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const-string v2, "Type"

    const-string v3, "ValBoolean"

    const-string v4, "ValInt"

    const-string v5, "ValLong"

    const-string v6, "ValFloat"

    const-string v7, "ValDouble"

    const-string v8, "ValString"

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;->OooO0oO(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;->OooO0O0()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;->OooO0oo(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;->OooOOO0()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const-string v2, "Cmd"

    const-string v3, "Arg1"

    const-string v4, "Arg2"

    const-string v5, "Arg3"

    const-string v6, "FileData"

    const-string v7, "Arg4"

    const-string v8, "PkgName"

    const-string v9, "ClassName"

    const-string v10, "MethodName"

    const-string v11, "Types"

    const-string v12, "Params"

    const-string v13, "IsSyncCall"

    const-string v14, "WaitId"

    const-string v15, "RetValue"

    const-string v16, "Encrypt"

    const-string v17, "IsDebug"

    filled-new-array/range {v2 .. v17}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;->OooOO0(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const/4 v0, 0x0

    return-object v0
.end method
