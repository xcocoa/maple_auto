.class public Lz2/z1$OooO0O0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/c2$OooO00o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/z1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO0O0"
.end annotation


# instance fields
.field private final OooO00o:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lz2/z1$OooO0O0;->OooO00o:I

    return-void
.end method


# virtual methods
.method public OooO00o(Landroid/content/Context;)Landroid/view/animation/Animation;
    .locals 1

    iget v0, p0, Lz2/z1$OooO0O0;->OooO00o:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1
.end method
