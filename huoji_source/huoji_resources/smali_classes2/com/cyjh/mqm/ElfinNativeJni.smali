.class public Lcom/cyjh/mqm/ElfinNativeJni;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "mqm"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getString(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public static native initBaseParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native requestDomain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native setKeys(Ljava/lang/String;)V
.end method

.method public static native test(Ljava/lang/String;)V
.end method
