.class public Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;
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
    .locals 29

    invoke-static/range {p1 .. p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->OooO0OO(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->OooO0O0()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->OooO00o(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->OooO0o0()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const-string v2, "Top"

    const-string v3, "Left"

    const-string v4, "Bottom"

    const-string v5, "Right"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->OooO0Oo(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->OooO0O0()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->OooO0o(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->OooOO0O()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const-string v2, "Command"

    const-string v3, "ControlId"

    const-string v4, "ParentId"

    const-string v5, "Text"

    const-string v6, "Width"

    const-string v7, "Height"

    const-string v8, "LayoutStyle"

    const-string v9, "DefaultCheckStatus"

    const-string v10, "ItemText"

    const-string v11, "ItemIndex"

    const-string v12, "DefaultItemIndex"

    const-string v13, "Path"

    const-string v14, "Url"

    const-string v15, "EnabledStatus"

    const-string v16, "VisibleStatus"

    const-string v17, "Color"

    const-string v18, "AlignType"

    const-string v19, "Padding"

    const-string v20, "UipData"

    const-string v21, "EditInputType"

    const-string v22, "FontType"

    const-string v23, "FontSize"

    const-string v24, "Left"

    const-string v25, "Top"

    const-string v26, "IntParam"

    const-string v27, "StrParam"

    const-string v28, "BoolParam"

    filled-new-array/range {v2 .. v28}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->OooO0oO(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->OooO0O0()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->OooO0oo(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->OooOOo0()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const-string v2, "ControlId"

    const-string v3, "Type"

    const-string v4, "EventArgs"

    const-string v5, "EventFunctionName"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->OooOO0(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->OooO0O0()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->OooOO0o(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->OooOo0o()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const-string v4, "BoolValue"

    const-string v5, "IntValue"

    const-string v6, "StringValue"

    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->OooOOO0(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->OooO0O0()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->OooOOO(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->OooOoO0()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const-string v3, "Command"

    const-string v4, "Event"

    const-string v5, "IsSuccess"

    const-string v6, "VarTable"

    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v1, v6}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->OooOOOo(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->OooO0O0()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->OooOOo(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->OooOoOO()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const-string v6, "UipAttributeData"

    filled-new-array {v3, v2, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->OooOOoo(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->OooO0O0()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->OooOo00(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->OooOoo()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->OooOo0O(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const/4 v0, 0x0

    return-object v0
.end method
