.class public Lz2/t7$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/t7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/t7;


# direct methods
.method public constructor <init>(Lz2/t7;)V
    .locals 0

    iput-object p1, p0, Lz2/t7$OooO00o;->OooO00o:Lz2/t7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 2

    iget-object p1, p0, Lz2/t7$OooO00o;->OooO00o:Lz2/t7;

    invoke-static {p1}, Lz2/t7;->OooO0O0(Lz2/t7;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lz2/t7$OooO00o;->OooO00o:Lz2/t7;

    invoke-static {p2}, Lz2/t7;->OooO00o(Lz2/t7;)Ljava/lang/Runnable;

    move-result-object p2

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
