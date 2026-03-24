.class public Lz2/c2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/x1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/c2$OooO00o;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lz2/x1<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final OooO00o:Lz2/c2$OooO00o;


# direct methods
.method public constructor <init>(Lz2/c2$OooO00o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/c2;->OooO00o:Lz2/c2$OooO00o;

    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/Object;Lz2/x1$OooO00o;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lz2/x1$OooO00o;",
            ")Z"
        }
    .end annotation

    invoke-interface {p2}, Lz2/x1$OooO00o;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    iget-object p2, p0, Lz2/c2;->OooO00o:Lz2/c2$OooO00o;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p2, v0}, Lz2/c2$OooO00o;->OooO00o(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
