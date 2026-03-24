.class public final enum Lcom/octopus/ad/b/e$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/octopus/ad/b/e$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/octopus/ad/b/e$a;

.field public static final enum b:Lcom/octopus/ad/b/e$a;

.field public static final enum c:Lcom/octopus/ad/b/e$a;

.field public static final enum d:Lcom/octopus/ad/b/e$a;

.field public static final enum e:Lcom/octopus/ad/b/e$a;

.field public static final enum f:Lcom/octopus/ad/b/e$a;

.field public static final enum g:Lcom/octopus/ad/b/e$a;

.field private static final synthetic i:[Lcom/octopus/ad/b/e$a;


# instance fields
.field private final h:I


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/octopus/ad/b/e$a;

    const-string v1, "ADP_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/octopus/ad/b/e$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/octopus/ad/b/e$a;->a:Lcom/octopus/ad/b/e$a;

    new-instance v1, Lcom/octopus/ad/b/e$a;

    const-string v3, "ADP_IVIDEO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/octopus/ad/b/e$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/octopus/ad/b/e$a;->b:Lcom/octopus/ad/b/e$a;

    new-instance v3, Lcom/octopus/ad/b/e$a;

    const-string v5, "ADP_LOADING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/octopus/ad/b/e$a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/octopus/ad/b/e$a;->c:Lcom/octopus/ad/b/e$a;

    new-instance v5, Lcom/octopus/ad/b/e$a;

    const-string v7, "ADP_TABLE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/octopus/ad/b/e$a;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/octopus/ad/b/e$a;->d:Lcom/octopus/ad/b/e$a;

    new-instance v7, Lcom/octopus/ad/b/e$a;

    const-string v9, "ADP_BANNER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/octopus/ad/b/e$a;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/octopus/ad/b/e$a;->e:Lcom/octopus/ad/b/e$a;

    new-instance v9, Lcom/octopus/ad/b/e$a;

    const-string v11, "ADP_CUSTOMER"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/octopus/ad/b/e$a;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/octopus/ad/b/e$a;->f:Lcom/octopus/ad/b/e$a;

    new-instance v11, Lcom/octopus/ad/b/e$a;

    const-string v13, "ADP_NATIVE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/octopus/ad/b/e$a;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/octopus/ad/b/e$a;->g:Lcom/octopus/ad/b/e$a;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/octopus/ad/b/e$a;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/octopus/ad/b/e$a;->i:[Lcom/octopus/ad/b/e$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/octopus/ad/b/e$a;->h:I

    return-void
.end method

.method public static a(I)Lcom/octopus/ad/b/e$a;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/octopus/ad/b/e$a;->g:Lcom/octopus/ad/b/e$a;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/octopus/ad/b/e$a;->f:Lcom/octopus/ad/b/e$a;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/octopus/ad/b/e$a;->e:Lcom/octopus/ad/b/e$a;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/octopus/ad/b/e$a;->d:Lcom/octopus/ad/b/e$a;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/octopus/ad/b/e$a;->c:Lcom/octopus/ad/b/e$a;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/octopus/ad/b/e$a;->b:Lcom/octopus/ad/b/e$a;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/octopus/ad/b/e$a;->a:Lcom/octopus/ad/b/e$a;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/octopus/ad/b/e$a;
    .locals 1

    const-class v0, Lcom/octopus/ad/b/e$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/octopus/ad/b/e$a;

    return-object p0
.end method

.method public static values()[Lcom/octopus/ad/b/e$a;
    .locals 1

    sget-object v0, Lcom/octopus/ad/b/e$a;->i:[Lcom/octopus/ad/b/e$a;

    invoke-virtual {v0}, [Lcom/octopus/ad/b/e$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/octopus/ad/b/e$a;

    return-object v0
.end method
