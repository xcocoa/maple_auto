.class public interface abstract Lcom/cyjh/mq/sdk/inf/OnElfCallback;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ENGINE_HEART_BEAT:I = 0x20

.field public static final ENGINE_NO_HB_TIME:I = 0x21

.field public static final ENGINE_SCRIPT_HEART_BEAT:I = 0x22

.field public static final ENGINE_SCRIPT_HEART_BEAT_KEY_EOOR:I = 0x23

.field public static final ENUM_SCRIPT_NEED_UPGRADE:I = 0x24

.field public static final ENUM_SCRIPT_PAUSE_BY_HEART_BEAT_VERIFI_ERR:I = 0x25

.field public static final RESPONSE_VERIFY_FAILED:I = 0x1f


# virtual methods
.method public abstract callback(ILjava/lang/String;)V
.end method
