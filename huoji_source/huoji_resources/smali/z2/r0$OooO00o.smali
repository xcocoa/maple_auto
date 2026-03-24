.class public Lz2/r0$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/r0$OooO0O0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/r0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Lz2/o00Oo00;Lz2/n0;Lz2/s0;Landroid/content/Context;)Lz2/o0;
    .locals 1
    .param p1    # Lz2/o00Oo00;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lz2/n0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lz2/s0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lz2/o0;

    invoke-direct {v0, p1, p2, p3, p4}, Lz2/o0;-><init>(Lz2/o00Oo00;Lz2/n0;Lz2/s0;Landroid/content/Context;)V

    return-object v0
.end method
