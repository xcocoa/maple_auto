.class public final enum Lcom/anythink/expressad/video/dynview/c/b;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lcom/anythink/expressad/video/dynview/c/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/anythink/expressad/video/dynview/c/b;",
        ">;",
        "Lcom/anythink/expressad/video/dynview/c/a;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/anythink/expressad/video/dynview/c/b;

.field public static final enum b:Lcom/anythink/expressad/video/dynview/c/b;

.field public static final enum c:Lcom/anythink/expressad/video/dynview/c/b;

.field public static final enum d:Lcom/anythink/expressad/video/dynview/c/b;

.field public static final enum e:Lcom/anythink/expressad/video/dynview/c/b;

.field public static final enum f:Lcom/anythink/expressad/video/dynview/c/b;

.field private static final synthetic i:[Lcom/anythink/expressad/video/dynview/c/b;


# instance fields
.field private g:I

.field private h:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/anythink/expressad/video/dynview/c/b;

    const-string v1, "NOT_FOUND_VIEWOPTION"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const-string v4, "ViewOption is null"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/anythink/expressad/video/dynview/c/b;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/anythink/expressad/video/dynview/c/b;->a:Lcom/anythink/expressad/video/dynview/c/b;

    new-instance v1, Lcom/anythink/expressad/video/dynview/c/b;

    const-string v3, "NOT_FOUND_CONTEXT"

    const/4 v4, 0x1

    const/4 v5, -0x2

    const-string v6, "Context is null"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/anythink/expressad/video/dynview/c/b;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/anythink/expressad/video/dynview/c/b;->b:Lcom/anythink/expressad/video/dynview/c/b;

    new-instance v3, Lcom/anythink/expressad/video/dynview/c/b;

    const-string v5, "NOT_FOUND_LAYOUTNAME"

    const/4 v6, 0x2

    const/4 v7, -0x3

    const-string v8, "layout xml name is null"

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/anythink/expressad/video/dynview/c/b;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/anythink/expressad/video/dynview/c/b;->c:Lcom/anythink/expressad/video/dynview/c/b;

    new-instance v5, Lcom/anythink/expressad/video/dynview/c/b;

    const-string v7, "CAMPAIGNEX_IS_NULL"

    const/4 v8, 0x3

    const/4 v9, -0x4

    const-string v10, "Campaign size only one"

    invoke-direct {v5, v7, v8, v9, v10}, Lcom/anythink/expressad/video/dynview/c/b;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lcom/anythink/expressad/video/dynview/c/b;->d:Lcom/anythink/expressad/video/dynview/c/b;

    new-instance v7, Lcom/anythink/expressad/video/dynview/c/b;

    const-string v9, "VIEW_CREATE_ERROR"

    const/4 v10, 0x4

    const/4 v11, -0x5

    const-string v12, "view create error"

    invoke-direct {v7, v9, v10, v11, v12}, Lcom/anythink/expressad/video/dynview/c/b;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lcom/anythink/expressad/video/dynview/c/b;->e:Lcom/anythink/expressad/video/dynview/c/b;

    new-instance v9, Lcom/anythink/expressad/video/dynview/c/b;

    const-string v11, "NOT_FOUND_ROOTVIEW"

    const/4 v12, 0x5

    const/4 v13, -0x6

    const-string v14, "rootview is null"

    invoke-direct {v9, v11, v12, v13, v14}, Lcom/anythink/expressad/video/dynview/c/b;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lcom/anythink/expressad/video/dynview/c/b;->f:Lcom/anythink/expressad/video/dynview/c/b;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/anythink/expressad/video/dynview/c/b;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/anythink/expressad/video/dynview/c/b;->i:[Lcom/anythink/expressad/video/dynview/c/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/anythink/expressad/video/dynview/c/b;->g:I

    iput-object p4, p0, Lcom/anythink/expressad/video/dynview/c/b;->h:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/anythink/expressad/video/dynview/c/b;
    .locals 1

    const-class v0, Lcom/anythink/expressad/video/dynview/c/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/anythink/expressad/video/dynview/c/b;

    return-object p0
.end method

.method public static values()[Lcom/anythink/expressad/video/dynview/c/b;
    .locals 1

    sget-object v0, Lcom/anythink/expressad/video/dynview/c/b;->i:[Lcom/anythink/expressad/video/dynview/c/b;

    invoke-virtual {v0}, [Lcom/anythink/expressad/video/dynview/c/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/anythink/expressad/video/dynview/c/b;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/video/dynview/c/b;->g:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/c/b;->h:Ljava/lang/String;

    return-object v0
.end method
