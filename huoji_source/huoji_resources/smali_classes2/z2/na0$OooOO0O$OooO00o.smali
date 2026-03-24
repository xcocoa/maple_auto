.class public Lz2/na0$OooOO0O$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/na0$OooOO0O;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Z

.field public final synthetic OoooOoo:Lz2/na0$OooOO0O;


# direct methods
.method public constructor <init>(Lz2/na0$OooOO0O;Z)V
    .locals 0

    iput-object p1, p0, Lz2/na0$OooOO0O$OooO00o;->OoooOoo:Lz2/na0$OooOO0O;

    iput-boolean p2, p0, Lz2/na0$OooOO0O$OooO00o;->OoooOoO:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lz2/na0$OooOO0O$OooO00o;->OoooOoo:Lz2/na0$OooOO0O;

    iget-object v0, v0, Lz2/na0$OooOO0O;->OoooOoo:Lz2/gb0;

    invoke-virtual {v0}, Lz2/gb0;->OooO0OO()Lz2/mb0;

    move-result-object v0

    iget-boolean v1, p0, Lz2/na0$OooOO0O$OooO00o;->OoooOoO:Z

    invoke-interface {v0, v1}, Lz2/mb0;->OooO00o(Z)V

    return-void
.end method
