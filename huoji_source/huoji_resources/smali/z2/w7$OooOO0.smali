.class public Lz2/w7$OooOO0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/w7$OooOOO0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/w7;->OooO0o(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Landroid/content/Context;

.field public final synthetic OooO0O0:Lz2/w7;


# direct methods
.method public constructor <init>(Lz2/w7;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lz2/w7$OooOO0;->OooO0O0:Lz2/w7;

    iput-object p2, p0, Lz2/w7$OooOO0;->OooO00o:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Z)V
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lz2/w7$OooOO0;->OooO00o:Landroid/content/Context;

    invoke-static {p1}, Lz2/w7;->OooO0oO(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "FloatWindowManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
