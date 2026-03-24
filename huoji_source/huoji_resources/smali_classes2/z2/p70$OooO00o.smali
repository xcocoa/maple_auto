.class public Lz2/p70$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/p70;->OooO00o(Lz2/h90;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lz2/h90;

.field public final synthetic OoooOoo:Lz2/p70;


# direct methods
.method public constructor <init>(Lz2/p70;Lz2/h90;)V
    .locals 0

    iput-object p1, p0, Lz2/p70$OooO00o;->OoooOoo:Lz2/p70;

    iput-object p2, p0, Lz2/p70$OooO00o;->OoooOoO:Lz2/h90;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lz2/p70$OooO00o;->OoooOoo:Lz2/p70;

    iget-object v1, p0, Lz2/p70$OooO00o;->OoooOoO:Lz2/h90;

    invoke-virtual {v0, v1}, Lz2/p70;->OooOO0o(Lz2/h90;)V

    return-void
.end method
