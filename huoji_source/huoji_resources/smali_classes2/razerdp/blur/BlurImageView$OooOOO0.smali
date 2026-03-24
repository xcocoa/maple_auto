.class public Lrazerdp/blur/BlurImageView$OooOOO0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrazerdp/blur/BlurImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooOOO0"
.end annotation


# static fields
.field private static final OooO0o0:J = 0x3e8L


# instance fields
.field public OooO00o:Ljava/lang/Runnable;

.field public OooO0O0:J

.field public final OooO0OO:J

.field public final synthetic OooO0Oo:Lrazerdp/blur/BlurImageView;


# direct methods
.method public constructor <init>(Lrazerdp/blur/BlurImageView;Ljava/lang/Runnable;J)V
    .locals 0

    iput-object p1, p0, Lrazerdp/blur/BlurImageView$OooOOO0;->OooO0Oo:Lrazerdp/blur/BlurImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lrazerdp/blur/BlurImageView$OooOOO0;->OooO00o:Ljava/lang/Runnable;

    iput-wide p3, p0, Lrazerdp/blur/BlurImageView$OooOOO0;->OooO0O0:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lrazerdp/blur/BlurImageView$OooOOO0;->OooO0OO:J

    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 2

    iget-object v0, p0, Lrazerdp/blur/BlurImageView$OooOOO0;->OooO00o:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lrazerdp/blur/BlurImageView$OooOOO0;->OooO0Oo:Lrazerdp/blur/BlurImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lrazerdp/blur/BlurImageView$OooOOO0;->OooO00o:Ljava/lang/Runnable;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lrazerdp/blur/BlurImageView$OooOOO0;->OooO0O0:J

    return-void
.end method

.method public OooO0O0()V
    .locals 2

    iget-object v0, p0, Lrazerdp/blur/BlurImageView$OooOOO0;->OooO00o:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lrazerdp/blur/BlurImageView$OooOOO0;->OooO0Oo:Lrazerdp/blur/BlurImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public OooO0OO()Z
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lrazerdp/blur/BlurImageView$OooOOO0;->OooO0OO:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public OooO0Oo(Ljava/lang/Runnable;)Z
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lrazerdp/blur/BlurImageView$OooOOO0;->OooO00o:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lrazerdp/blur/BlurImageView$OooOOO0;->OooO00o:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public OooO0o0()V
    .locals 3

    invoke-virtual {p0}, Lrazerdp/blur/BlurImageView$OooOOO0;->OooO0OO()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "\u6a21\u7cca\u8d85\u65f6"

    aput-object v2, v0, v1

    const-string v1, "BlurImageView"

    invoke-static {v1, v0}, Lrazerdp/util/log/PopupLog;->OooO0OO(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lrazerdp/blur/BlurImageView$OooOOO0;->OooO00o()V

    return-void

    :cond_0
    iget-object v0, p0, Lrazerdp/blur/BlurImageView$OooOOO0;->OooO00o:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lrazerdp/blur/BlurImageView$OooOOO0;->OooO0Oo:Lrazerdp/blur/BlurImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
