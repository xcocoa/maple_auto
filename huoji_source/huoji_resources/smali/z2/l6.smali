.class public final synthetic Lz2/l6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic OoooOoO:Lz2/t6;


# direct methods
.method public synthetic constructor <init>(Lz2/t6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/l6;->OoooOoO:Lz2/t6;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lz2/l6;->OoooOoO:Lz2/t6;

    invoke-virtual {v0}, Lz2/t6;->OooOOOo()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method
