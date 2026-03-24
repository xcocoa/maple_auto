.class public final Lcom/anythink/basead/ui/guidetoclickv2/b$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/basead/ui/guidetoclickv2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:J

.field public d:J

.field private e:Ljava/lang/String;

.field private f:I


# direct methods
.method public constructor <init>(IIJJLjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/anythink/basead/ui/guidetoclickv2/b$a;->a:I

    iput p2, p0, Lcom/anythink/basead/ui/guidetoclickv2/b$a;->b:I

    iput-wide p3, p0, Lcom/anythink/basead/ui/guidetoclickv2/b$a;->c:J

    iput-wide p5, p0, Lcom/anythink/basead/ui/guidetoclickv2/b$a;->d:J

    iput-object p7, p0, Lcom/anythink/basead/ui/guidetoclickv2/b$a;->e:Ljava/lang/String;

    iput p8, p0, Lcom/anythink/basead/ui/guidetoclickv2/b$a;->f:I

    return-void
.end method

.method public static synthetic a(Lcom/anythink/basead/ui/guidetoclickv2/b$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/anythink/basead/ui/guidetoclickv2/b$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lcom/anythink/basead/ui/guidetoclickv2/b$a;)I
    .locals 0

    iget p0, p0, Lcom/anythink/basead/ui/guidetoclickv2/b$a;->f:I

    return p0
.end method
