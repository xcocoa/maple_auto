.class public Lz2/t7$OooO0O0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/t7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lz2/t7;


# direct methods
.method public constructor <init>(Lz2/t7;)V
    .locals 0

    iput-object p1, p0, Lz2/t7$OooO0O0;->OoooOoO:Lz2/t7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lz2/t7$OooO0O0;->OoooOoO:Lz2/t7;

    invoke-static {v0}, Lz2/t7;->OooO0OO(Lz2/t7;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/t7$OooO0O0;->OoooOoO:Lz2/t7;

    invoke-static {v0}, Lz2/t7;->OooO0Oo(Lz2/t7;)Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lz2/t7$OooO0O0;->OoooOoO:Lz2/t7;

    iget-object v1, v1, Lz2/t7;->OooO0o:Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    :cond_0
    return-void
.end method
