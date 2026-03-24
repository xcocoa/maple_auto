.class public abstract Lz2/nl$OooO0OO;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/nl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OooO0OO"
.end annotation


# instance fields
.field public final OooO00o:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lz2/nl$OooO0OO;->OooO00o:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public abstract OooO00o(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
.end method
