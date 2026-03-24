.class public Lz2/b20$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/b20;->OooO0o(Lz2/b20$OooO0OO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lz2/b20$OooO0OO;

.field public final synthetic OoooOoo:Lz2/b20;


# direct methods
.method public constructor <init>(Lz2/b20;Lz2/b20$OooO0OO;)V
    .locals 0

    iput-object p1, p0, Lz2/b20$OooO00o;->OoooOoo:Lz2/b20;

    iput-object p2, p0, Lz2/b20$OooO00o;->OoooOoO:Lz2/b20$OooO0OO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lz2/b20$OooO00o;->OoooOoO:Lz2/b20$OooO0OO;

    invoke-interface {v0}, Lz2/b20$OooO0OO;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lz2/b20$OooO00o;->OoooOoo:Lz2/b20;

    invoke-static {v1}, Lz2/b20;->OooO00o(Lz2/b20;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    instance-of v1, v0, Lz2/f20;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lz2/f20;

    iget-object v2, p0, Lz2/b20$OooO00o;->OoooOoo:Lz2/b20;

    invoke-static {v2}, Lz2/b20;->OooO0O0(Lz2/b20;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lz2/f20;->OooO0O0(Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lz2/b20$OooO00o;->OoooOoo:Lz2/b20;

    invoke-static {v1}, Lz2/b20;->OooO0OO(Lz2/b20;)Lz2/l10;

    move-result-object v1

    invoke-virtual {v1, v0}, Lz2/l10;->OooOOOO(Ljava/lang/Object;)V

    :goto_0
    return-void

    :catch_1
    move-exception v1

    sget-object v2, Lz2/l10;->OooOOo0:Ljava/lang/String;

    const-string v3, "Original exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Could not create failure event"

    invoke-direct {v0, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
