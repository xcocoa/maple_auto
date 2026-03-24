.class public final synthetic Lz2/y6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/x6$OooO00o;


# instance fields
.field public final synthetic OooO00o:Lz2/d7;

.field public final synthetic OooO0O0:Landroid/os/Vibrator;

.field public final synthetic OooO0OO:Lz2/x6;


# direct methods
.method public synthetic constructor <init>(Lz2/d7;Landroid/os/Vibrator;Lz2/x6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/y6;->OooO00o:Lz2/d7;

    iput-object p2, p0, Lz2/y6;->OooO0O0:Landroid/os/Vibrator;

    iput-object p3, p0, Lz2/y6;->OooO0OO:Lz2/x6;

    return-void
.end method


# virtual methods
.method public final onShake()V
    .locals 3

    iget-object v0, p0, Lz2/y6;->OooO00o:Lz2/d7;

    iget-object v1, p0, Lz2/y6;->OooO0O0:Landroid/os/Vibrator;

    iget-object v2, p0, Lz2/y6;->OooO0OO:Lz2/x6;

    invoke-virtual {v0, v1, v2}, Lz2/d7;->OooO0Oo(Landroid/os/Vibrator;Lz2/x6;)V

    return-void
.end method
