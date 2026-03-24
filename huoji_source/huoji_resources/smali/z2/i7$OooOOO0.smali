.class public Lz2/i7$OooOOO0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/kc$OooO00o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/i7;->Oooo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/i7;


# direct methods
.method public constructor <init>(Lz2/i7;)V
    .locals 0

    iput-object p1, p0, Lz2/i7$OooOOO0;->OooO00o:Lz2/i7;

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
    .locals 2

    invoke-static {}, Lz2/i7;->OooO0Oo()Ljava/lang/String;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    const-class v1, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x1

    const-string v1, "needUpdate"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
