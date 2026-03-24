.class public Lz2/dj$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/tu;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/dj;->OooO00o(Ljava/lang/String;Lz2/cj$OooO00o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/dj;


# direct methods
.method public constructor <init>(Lz2/dj;)V
    .locals 0

    iput-object p1, p0, Lz2/dj$OooO00o;->OooO00o:Lz2/dj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o([B)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
