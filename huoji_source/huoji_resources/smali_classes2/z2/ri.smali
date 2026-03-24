.class public final synthetic Lz2/ri;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic OoooOoO:Lz2/ui;


# direct methods
.method public synthetic constructor <init>(Lz2/ui;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/ri;->OoooOoO:Lz2/ui;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lz2/ri;->OoooOoO:Lz2/ui;

    invoke-virtual {v0}, Lz2/ui;->OooO0oo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
