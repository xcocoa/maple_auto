.class public final synthetic Lz2/t9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic OoooOoO:Lz2/ca;


# direct methods
.method public synthetic constructor <init>(Lz2/ca;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/t9;->OoooOoO:Lz2/ca;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget-object v0, p0, Lz2/t9;->OoooOoO:Lz2/ca;

    invoke-virtual {v0, p1}, Lz2/ca;->OooOoO0(Landroid/os/Message;)Z

    move-result p1

    return p1
.end method
