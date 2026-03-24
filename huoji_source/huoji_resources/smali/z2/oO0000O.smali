.class public Lz2/oO0000O;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/Object;Lz2/o0O0O0Oo;IILjava/util/Map;Ljava/lang/Class;Ljava/lang/Class;Lz2/o0O0OOO0;)Lz2/oO00000o;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lz2/o0O0O0Oo;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lz2/o0O0o000<",
            "*>;>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Lz2/o0O0OOO0;",
            ")",
            "Lz2/oO00000o;"
        }
    .end annotation

    new-instance v9, Lz2/oO00000o;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lz2/oO00000o;-><init>(Ljava/lang/Object;Lz2/o0O0O0Oo;IILjava/util/Map;Ljava/lang/Class;Ljava/lang/Class;Lz2/o0O0OOO0;)V

    return-object v9
.end method
