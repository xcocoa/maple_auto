.class public Lcom/umeng/commonsdk/proguard/ar;
.super Lcom/umeng/commonsdk/proguard/an;
.source ""


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/umeng/commonsdk/proguard/aa;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(BLjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/lang/Class<",
            "+",
            "Lcom/umeng/commonsdk/proguard/aa;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/proguard/an;-><init>(B)V

    iput-object p2, p0, Lcom/umeng/commonsdk/proguard/ar;->a:Ljava/lang/Class;

    return-void
.end method
