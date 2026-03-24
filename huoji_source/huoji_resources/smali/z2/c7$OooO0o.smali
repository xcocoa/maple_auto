.class public Lz2/c7$OooO0o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/rc$OooO00o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/c7;->OooOO0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Ljava/lang/String;

.field public final synthetic OooO0O0:Lz2/c7;


# direct methods
.method public constructor <init>(Lz2/c7;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz2/c7$OooO0o;->OooO0O0:Lz2/c7;

    iput-object p2, p0, Lz2/c7$OooO0o;->OooO00o:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public OooO0O0(Lcom/cyjh/http/bean/response/ProjectNumberInfo;)V
    .locals 8

    iget-object v3, p0, Lz2/c7$OooO0o;->OooO00o:Ljava/lang/String;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    iget-object v2, p1, Lcom/cyjh/elfin/base/AppContext;->OoooOoO:Ljava/lang/String;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v0

    iget-boolean v0, v0, Lz2/b7;->OooO0O0:Z

    invoke-static {p1, v0}, Lz2/c9;->OooO0o(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v0

    iget-boolean v0, v0, Lz2/b7;->OooO0O0:Z

    invoke-static {p1, v0}, Lz2/c9;->OooO0oO(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    invoke-static {p1}, Lz2/c9;->OooO0Oo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lz2/rc;->OooO0oO()Lz2/rc;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v1

    new-instance v7, Lz2/c7$OooO0o$OooO00o;

    invoke-direct {v7, p0, v2, v6}, Lz2/c7$OooO0o$OooO00o;-><init>(Lz2/c7$OooO0o;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v0 .. v7}, Lz2/rc;->OooO0OO(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lz2/rc$OooO00o;)V

    return-void
.end method
