.class public Lz2/w7$OooO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/w7$OooOOO0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/w7;->OooOOo0(Landroid/content/Context;)V
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

    iput-object p1, p0, Lz2/w7$OooO;->OooO0O0:Lz2/w7;

    iput-object p2, p0, Lz2/w7$OooO;->OooO00o:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lz2/w7$OooO;->OooO00o:Landroid/content/Context;

    invoke-static {p1}, Lz2/a8;->OooO00o(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const-string p1, "FloatWindowManager"

    const-string v0, "ROM:miui, user manually refuse OVERLAY_PERMISSION"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
