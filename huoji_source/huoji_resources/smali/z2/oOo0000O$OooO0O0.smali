.class public final Lz2/oOo0000O$OooO0O0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/oOo0000O$OooO0OO;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/oOo0000O;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooO0O0"
.end annotation


# instance fields
.field private final OooO00o:Landroid/util/DisplayMetrics;


# direct methods
.method public constructor <init>(Landroid/util/DisplayMetrics;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/oOo0000O$OooO0O0;->OooO00o:Landroid/util/DisplayMetrics;

    return-void
.end method


# virtual methods
.method public OooO00o()I
    .locals 1

    iget-object v0, p0, Lz2/oOo0000O$OooO0O0;->OooO00o:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public OooO0O0()I
    .locals 1

    iget-object v0, p0, Lz2/oOo0000O$OooO0O0;->OooO00o:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method
