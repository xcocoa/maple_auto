.class public Lmobi/oneway/export/f/d;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmobi/oneway/export/f/c;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmobi/oneway/export/f/g;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmobi/oneway/export/f/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lmobi/oneway/export/enums/AdType;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lmobi/oneway/export/enums/AdType;",
            ")",
            "Ljava/util/List<",
            "Lmobi/oneway/export/f/a;",
            ">;"
        }
    .end annotation

    sget-object v0, Lmobi/oneway/export/f/d;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/oneway/export/f/c;

    invoke-virtual {v1}, Lmobi/oneway/export/f/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lmobi/oneway/export/f/c;->b()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lmobi/oneway/export/f/d;->a(Ljava/util/List;Ljava/lang/String;Lmobi/oneway/export/enums/AdType;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    invoke-static {p0}, Lmobi/oneway/export/f/d;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmobi/oneway/export/f/a;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/oneway/export/f/a;

    invoke-virtual {v1}, Lmobi/oneway/export/f/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;Lmobi/oneway/export/enums/AdType;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmobi/oneway/export/f/c$a;",
            ">;",
            "Ljava/lang/String;",
            "Lmobi/oneway/export/enums/AdType;",
            ")",
            "Ljava/util/List<",
            "Lmobi/oneway/export/f/a;",
            ">;"
        }
    .end annotation

    sget-object v0, Lmobi/oneway/export/f/d;->a:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/oneway/export/f/c$a;

    invoke-virtual {v0}, Lmobi/oneway/export/f/c$a;->a()I

    move-result v2

    invoke-static {v2}, Lmobi/oneway/export/f/d;->a(I)Lmobi/oneway/export/f/g;

    move-result-object v3

    if-eqz v3, :cond_1

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    move-object v0, p1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lmobi/oneway/export/f/c$a;->b()Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v2, Lmobi/oneway/export/f/a;

    invoke-direct {v2, v3, p1, v0}, Lmobi/oneway/export/f/a;-><init>(Lmobi/oneway/export/f/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Lmobi/oneway/export/f/a;->d(Lmobi/oneway/export/enums/AdType;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    :goto_2
    return-object v1
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;)Lmobi/oneway/export/f/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmobi/oneway/export/f/a;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lmobi/oneway/export/f/a;"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmobi/oneway/export/f/a;

    invoke-virtual {p0}, Lmobi/oneway/export/f/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static a(I)Lmobi/oneway/export/f/g;
    .locals 4

    sget-object v0, Lmobi/oneway/export/f/d;->b:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/oneway/export/f/g;

    invoke-virtual {v2}, Lmobi/oneway/export/f/g;->a()I

    move-result v3

    if-ne v3, p0, :cond_1

    move-object v1, v2

    :cond_2
    return-object v1
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lmobi/oneway/export/f/d;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Lmobi/oneway/export/f/c;)V
    .locals 1

    sget-object v0, Lmobi/oneway/export/f/d;->a:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmobi/oneway/export/f/d;->a:Ljava/util/List;

    :cond_0
    sget-object v0, Lmobi/oneway/export/f/d;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Lmobi/oneway/export/f/g;)V
    .locals 1

    sget-object v0, Lmobi/oneway/export/f/d;->b:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmobi/oneway/export/f/d;->b:Ljava/util/List;

    :cond_0
    sget-object v0, Lmobi/oneway/export/f/d;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static b(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lmobi/oneway/export/f/a;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {v0}, Lmobi/oneway/export/f/d;->a(I)Lmobi/oneway/export/f/g;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lmobi/oneway/export/f/a;

    invoke-direct {v2, v0, p0, p0}, Lmobi/oneway/export/f/a;-><init>(Lmobi/oneway/export/f/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method
