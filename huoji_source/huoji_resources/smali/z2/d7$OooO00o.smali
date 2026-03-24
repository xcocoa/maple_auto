.class public Lz2/d7$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/d7;->OooO0OO(Landroid/os/Vibrator;Lz2/x6;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Landroid/os/Vibrator;

.field public final synthetic OoooOoo:Lz2/x6;

.field public final synthetic Ooooo00:Lz2/d7;


# direct methods
.method public constructor <init>(Lz2/d7;Landroid/os/Vibrator;Lz2/x6;)V
    .locals 0

    iput-object p1, p0, Lz2/d7$OooO00o;->Ooooo00:Lz2/d7;

    iput-object p2, p0, Lz2/d7$OooO00o;->OoooOoO:Landroid/os/Vibrator;

    iput-object p3, p0, Lz2/d7$OooO00o;->OoooOoo:Lz2/x6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lz2/d7$OooO00o;->OoooOoO:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    iget-object v0, p0, Lz2/d7$OooO00o;->OoooOoo:Lz2/x6;

    invoke-virtual {v0}, Lz2/x6;->OooO0O0()V

    return-void
.end method
