.class public Lz2/ud;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private OooO00o:Lz2/td;


# direct methods
.method public constructor <init>(Lz2/sd;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz2/wd;

    invoke-direct {v0, p1}, Lz2/wd;-><init>(Lz2/sd;)V

    iput-object v0, p0, Lz2/ud;->OooO00o:Lz2/td;

    return-void
.end method


# virtual methods
.method public OooO00o(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lz2/ud;->OooO00o:Lz2/td;

    invoke-interface {v0, p1, p2, p3}, Lz2/td;->OooO0O0(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
