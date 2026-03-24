.class public Lz2/ja0$OooOO0O$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/ja0$OooOO0O;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Ljava/lang/Object;

.field public final synthetic OoooOoo:Lz2/ja0$OooOO0O;


# direct methods
.method public constructor <init>(Lz2/ja0$OooOO0O;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lz2/ja0$OooOO0O$OooO00o;->OoooOoo:Lz2/ja0$OooOO0O;

    iput-object p2, p0, Lz2/ja0$OooOO0O$OooO00o;->OoooOoO:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lz2/ja0$OooOO0O$OooO00o;->OoooOoo:Lz2/ja0$OooOO0O;

    iget-object v0, v0, Lz2/ja0$OooOO0O;->Ooooo0o:Lz2/eb0;

    invoke-virtual {v0}, Lz2/eb0;->OooO0OO()Lz2/kb0;

    move-result-object v0

    iget-object v1, p0, Lz2/ja0$OooOO0O$OooO00o;->OoooOoO:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lz2/kb0;->OooO00o(Ljava/lang/Object;)V

    return-void
.end method
