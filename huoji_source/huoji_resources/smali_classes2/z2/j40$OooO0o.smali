.class public Lz2/j40$OooO0o;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/j40;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO0o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Callback:",
        "Ljava/lang/Object;",
        "D:",
        "Ljava/lang/Object;",
        "F:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final OooO00o:Lz2/u30;

.field public final OooO0O0:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TCallback;"
        }
    .end annotation
.end field

.field public final OooO0OO:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field public final OooO0Oo:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field

.field public final OooO0o:Lorg/jdeferred/Promise$State;

.field public final OooO0o0:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lz2/u30;Ljava/lang/Object;Lorg/jdeferred/Promise$State;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/u30;",
            "TCallback;",
            "Lorg/jdeferred/Promise$State;",
            "TD;TF;TP;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/j40$OooO0o;->OooO00o:Lz2/u30;

    iput-object p2, p0, Lz2/j40$OooO0o;->OooO0O0:Ljava/lang/Object;

    iput-object p3, p0, Lz2/j40$OooO0o;->OooO0o:Lorg/jdeferred/Promise$State;

    iput-object p4, p0, Lz2/j40$OooO0o;->OooO0OO:Ljava/lang/Object;

    iput-object p5, p0, Lz2/j40$OooO0o;->OooO0Oo:Ljava/lang/Object;

    iput-object p6, p0, Lz2/j40$OooO0o;->OooO0o0:Ljava/lang/Object;

    return-void
.end method
