.class public Lz2/u6$OooO0O0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/kc$OooO00o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/u6;->OooO()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/u6;


# direct methods
.method public constructor <init>(Lz2/u6;)V
    .locals 0

    iput-object p1, p0, Lz2/u6$OooO0O0;->OooO00o:Lz2/u6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Lcom/cyjh/http/bean/response/VersionUpdateInfo;)V
    .locals 0

    return-void
.end method

.method public OooO0O0(Lcom/cyjh/http/bean/response/VersionUpdateInfo;)V
    .locals 0

    return-void
.end method

.method public OooO0OO(Lcom/cyjh/http/bean/response/VersionUpdateInfo;)V
    .locals 3

    sget-object v0, Lz2/u6;->oo000o:Ljava/lang/String;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lz2/ca;

    iget-object v1, p0, Lz2/u6$OooO0O0;->OooO00o:Lz2/u6;

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2}, Lz2/ca;-><init>(Landroid/content/Context;Lcom/cyjh/http/bean/response/VersionUpdateInfo;Z)V

    invoke-virtual {v0}, Lz2/ca;->show()V

    return-void
.end method
