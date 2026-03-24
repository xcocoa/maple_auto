.class public Lz2/v$OooO0OO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO0OO"
.end annotation


# static fields
.field public static final OoooOoo:I = 0x1

.field public static final Ooooo00:I = 0x2


# instance fields
.field public final synthetic OoooOoO:Lz2/v;


# direct methods
.method public constructor <init>(Lz2/v;)V
    .locals 0

    iput-object p1, p0, Lz2/v$OooO0OO;->OoooOoO:Lz2/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lz2/v$OooO00o;

    iget-object v0, p0, Lz2/v$OooO0OO;->OoooOoO:Lz2/v;

    invoke-virtual {v0, p1}, Lz2/v;->OooOOOo(Lz2/v$OooO00o;)V

    return v1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lz2/v$OooO00o;

    iget-object v0, p0, Lz2/v$OooO0OO;->OoooOoO:Lz2/v;

    iget-object v0, v0, Lz2/v;->OooO0Oo:Lz2/o0;

    invoke-virtual {v0, p1}, Lz2/o0;->OooOOo(Lcom/bumptech/glide/request/target/Target;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
