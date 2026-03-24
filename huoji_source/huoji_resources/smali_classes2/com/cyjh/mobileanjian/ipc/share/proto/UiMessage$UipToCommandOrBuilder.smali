.class public interface abstract Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommandOrBuilder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UipToCommandOrBuilder"
.end annotation


# virtual methods
.method public abstract getCommand()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;
.end method

.method public abstract getEvent()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;
.end method

.method public abstract getEventOrBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEventOrBuilder;
.end method

.method public abstract getIsSuccess()Z
.end method

.method public abstract getUipAttributeData()Ljava/lang/String;
.end method

.method public abstract getUipAttributeDataBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasCommand()Z
.end method

.method public abstract hasEvent()Z
.end method

.method public abstract hasIsSuccess()Z
.end method

.method public abstract hasUipAttributeData()Z
.end method
