.class public Lz2/h7$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/kc$OooO00o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/h7;->OooO0oo(ZLz2/h7$OooOO0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/h7$OooOO0;


# direct methods
.method public constructor <init>(Lz2/h7$OooOO0;)V
    .locals 0

    iput-object p1, p0, Lz2/h7$OooO00o;->OooO00o:Lz2/h7$OooOO0;

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
    .locals 4

    if-nez p1, :cond_0

    iget-object p1, p0, Lz2/h7$OooO00o;->OooO00o:Lz2/h7$OooOO0;

    invoke-static {p1}, Lz2/h7;->OooO0OO(Lz2/h7$OooOO0;)V

    return-void

    :cond_0
    iget v0, p1, Lcom/cyjh/http/bean/response/VersionUpdateInfo;->UpgradeMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const/4 v0, 0x5

    iget v1, p1, Lcom/cyjh/http/bean/response/VersionUpdateInfo;->UpdateType:I

    const/4 v2, 0x3

    if-eq v0, v1, :cond_1

    if-ne v2, v1, :cond_3

    :cond_1
    invoke-static {}, Lz2/b5;->OooO0OO()Lz2/b5;

    move-result-object v0

    iget-object v1, p1, Lcom/cyjh/http/bean/response/VersionUpdateInfo;->AppVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lz2/b5;->OooO0oO(Ljava/lang/String;)V

    sget v0, Lz2/c7;->OooOO0:I

    iget v1, p1, Lcom/cyjh/http/bean/response/VersionUpdateInfo;->UpdateType:I

    if-ne v2, v1, :cond_2

    sget v0, Lz2/c7;->OooO:I

    :cond_2
    invoke-static {}, Lz2/c7;->OooO0oo()Lz2/c7;

    move-result-object v1

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v2

    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v3

    invoke-virtual {v3}, Lz2/b7;->OooO0oO()Lcom/cyjh/elfin/entity/Script;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cyjh/elfin/entity/Script;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lz2/c7;->OooO(Landroid/content/Context;Ljava/lang/String;I)Lz2/c7;

    move-result-object v0

    iget-object p1, p1, Lcom/cyjh/http/bean/response/VersionUpdateInfo;->UpdateUrl:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lz2/c7;->OooO0oO(Ljava/lang/String;)V

    invoke-static {}, Lz2/z6;->OooO0Oo()Lz2/z6;

    move-result-object p1

    iget-object p1, p1, Lz2/z6;->OooO00o:Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;

    invoke-virtual {p1}, Lcom/cyjh/elfin/floatingwindowprocess/floatview/ElfinFloatView;->Oooo0OO()V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lz2/h7$OooO00o;->OooO00o:Lz2/h7$OooOO0;

    invoke-static {p1}, Lz2/h7;->OooO0OO(Lz2/h7$OooOO0;)V

    :goto_0
    return-void
.end method
