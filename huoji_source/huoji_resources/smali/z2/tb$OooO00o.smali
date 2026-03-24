.class public Lz2/tb$OooO00o;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/tb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/tb;


# direct methods
.method public constructor <init>(Lz2/tb;)V
    .locals 0

    iput-object p1, p0, Lz2/tb$OooO00o;->OooO00o:Lz2/tb;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lz2/nb;

    iget-object v0, p0, Lz2/tb$OooO00o;->OooO00o:Lz2/tb;

    invoke-static {v0}, Lz2/tb;->OooOo0(Lz2/tb;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lz2/tb$OooO00o;->OooO00o:Lz2/tb;

    invoke-static {v0, p1}, Lz2/tb;->OooOo0O(Lz2/tb;Lz2/nb;)V

    return-void
.end method
