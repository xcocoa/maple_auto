.class public Lcom/anythink/network/directly/DirectlyATAdapter;
.super Lcom/anythink/network/adx/AdxATAdapter;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/network/adx/AdxATAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getNetworkName()Ljava/lang/String;
    .locals 1

    const-string v0, "Directly"

    return-object v0
.end method
